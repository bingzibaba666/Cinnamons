# -*-coding:utf-8 -*-



# Create your views here.
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from django.core import serializers
from HelloPopo_wxmini import models
from django.core.paginator import Paginator
import logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger("CrawlerStorage")

###商品 commodity
@csrf_exempt
def get_allcoms(request):

    sql_data=models.Commodity.objects.all()
    data = serializers.serialize("json", sql_data,ensure_ascii=False)
    print(data)
    # return JsonResponse(json.dumps(list),safe=False)
    return HttpResponse(data)

###分页查询
@csrf_exempt
def get_coms_bypage(request):
    import  json
    page = Paramvalue(res=request,param="page")
    pageSize = Paramvalue(res=request,param="limit")
    res = {}
    sql_data = models.Commodity.objects.all()  # 查询整个Master

    # 创建分页对象
    ptr = Paginator(sql_data, pageSize)


    #
    data = ptr.page(page)
    # res= serializers.serialize("json", data,ensure_ascii=False)
    res['list'] = format_sql_models(json.loads(serializers.serialize("json", data)))
    res['total']=ptr.count
    # respon=HttpResponse()


    # print(res['list'])

    return JsonResponse(respondict(True,res))
    #return HttpResponse(serializers.serialize("json", data))

def format_sql_models(sql_list):
    res_list=[]
    for item in sql_list:
        dict={}
        dict['pk']=item['pk']
        fields=item['fields']
        for key,value in fields.items():
            dict[key]=value
        res_list.append(dict)
    return res_list


@csrf_exempt
def get_coms_bytype(request):
    type=Paramvalue(res=request,param="type")
    sql_data=models.Commodity.objects.filter(type=type)
    data = serializers.serialize("json", sql_data, ensure_ascii=False)
    return HttpResponse(data)
@csrf_exempt
def get_coms_byid(request):
    comid=Paramvalue(res=request,param="comid")
    sql_data = models.Commodity.objects.filter(id=comid)
    data = serializers.serialize("json", sql_data, ensure_ascii=False)
    return HttpResponse(data)

###购物车 shop
@csrf_exempt
def save_shopcar(request):
    import  datetime
    date=str(datetime.datetime.now())
    commodity_list=objecs2list(models.Commodity.objects.filter(id=Paramvalue(request,"comid")))
    single_price=commodity_list[0]["fields"]["price"]
    com_title=commodity_list[0]["fields"]["title"]
    num=Paramvalue(request,"num")
    total=int(single_price)*int(num)
    dict={
        "comid":Paramvalue(request,"comid"),
        "com_title":com_title,
        "num":Paramvalue(request,"num"),
        "price":single_price,
        "total":total,
        "size":Paramvalue(request,"size"),
        "temp":Paramvalue(request,"temp"),
        "cream":Paramvalue(request,"cream"),
        "status": "alive",
        "status_code":"1",
        "create_date":str(date),
        "userid":Paramvalue(request,"userid")

    }
    models.Shopcar.objects.create(**dict)
    logger.info(dict)

    return JsonResponse(respondict(True,dict))

@csrf_exempt
def get_shopcars(request):
    sql_data=models.Shopcar.objects.all()
    data=serializers.serialize("json", sql_data,ensure_ascii=False)
    print(data)
    return HttpResponse(data)
# 获取生存购物车
@csrf_exempt
def get_shopcars_alive(request):
    sql_data=models.Shopcar.objects.filter(status_code="1",userid=Paramvalue(request,"userid"))
    data=serializers.serialize("json",sql_data,ensure_ascii=False)
    return HttpResponse(data)

#清洗购物车
@csrf_exempt
def wash_shopcar(request):
    shopcar=Paramvalue(request,"shopcar")
    shopcar=str2json(shopcar)
    print(shopcar)
    for car in shopcar:
        pk= car["pk"]

        status_code = car["fields"]["status_code"]
        models.Shopcar.objects.filter(id=pk).update(status_code=status_code,num=car['fields']['num'],total=car['fields']['total'])


    sql_data = models.Shopcar.objects.all()
    data = serializers.serialize("json", sql_data, ensure_ascii=False)
    return HttpResponse(data)

###订单
#设置订单
@csrf_exempt
def set_order(request):
    import datetime
    date = str(datetime.datetime.now())
    userid=Paramvalue(request,"userid")
    ##生存购物车
    sql_data = models.Shopcar.objects.filter(status_code="1",userid=userid)
    shopcars_alive= str2json(serializers.serialize("json", sql_data, ensure_ascii=False))
    shopcarid=[]
    comid=[]
    num=[]
    total=0
    for item in shopcars_alive:
        shopcarid.append(item["pk"])
        comid.append(item["fields"]["comid"])
        num.append(item["fields"]["num"])
        total+=int(item["fields"]["total"])

    orderdetail=str2json(Paramvalue(request,"orderdetail"))
    dict={
        "shopcarid":shopcarid,
        "comid":comid,
        "num":num,
        "total":total,
        "payway":orderdetail["payway"],
        "mealway":orderdetail["mealway"],
        "status_code":"1",
        "create_time":date,
        "userid":userid

    }
    #保存订单
    models.Orders.objects.create(**dict)
    #清理购物车
    models.Shopcar.objects.filter(status_code=1,userid=userid).update(status_code=0)
    ###消费记录
    orderid=models.Orders.objects.values("id").last()['id'] ##获取最新ordersid 即本order
    user_balance=models.User.objects.filter(id=userid).values("balance").last()["balance"]
    user_balance_now=int(user_balance)-int(total)


    purchasehistory_dict={
        "orderid":orderid,
        "total":total,
        "balance_now":user_balance_now,
        "userid":userid,
        'create_date':date
    }
    #添加消费记录
    models.Purchasehistory.objects.create(**purchasehistory_dict)
    #更新账户余额
    models.User.objects.filter(id=userid).update(balance=user_balance_now)
    return JsonResponse(respondict(True,dict))

#获取所有订单
@csrf_exempt
def get_allorders(request):
    userid=Paramvalue(request,"userid")
    sql_data=models.Orders.objects.filter(userid=userid).order_by('-create_time')
    orders=str2json(serializers.serialize("json", sql_data, ensure_ascii=False))

    neworders=[]
    for item in orders:
        shopcarid=str2json(item["fields"]["shopcarid"])
        orderfields = []
        for scid in shopcarid:
            shopcar=str2json(serializers.serialize("json",models.Shopcar.objects.filter(id=scid),ensure_ascii=False))
            orderfields.append(shopcar[0])
        item["orderfields"]=orderfields
        neworders.append(item)
    return JsonResponse(neworders,safe=False,json_dumps_params={'ensure_ascii':False})
#根据status_code获取订单
@csrf_exempt
def get_orders_bycode(request):
    status_code = Paramvalue(request,"status_code")
    userid=Paramvalue(request,"userid")
    return collect_orders(status_code,userid)

def collect_orders(status_code,userid):
    userid =userid
    sql_data = models.Orders.objects.filter(userid=userid,status_code=status_code).order_by('-create_time')
    orders = str2json(serializers.serialize("json", sql_data, ensure_ascii=False))

    neworders = []
    for item in orders:
        shopcarid = str2json(item["fields"]["shopcarid"])
        orderfields = []
        for scid in shopcarid:
            shopcar = str2json(
                serializers.serialize("json", models.Shopcar.objects.filter(id=scid), ensure_ascii=False))
            orderfields.append(shopcar[0])
        item["orderfields"] = orderfields
        neworders.append(item)
    return JsonResponse(neworders, safe=False,json_dumps_params={'ensure_ascii':False})
#改变订单状态
@csrf_exempt
def update_order_todead(requests):
    orderid=Paramvalue(requests,"orderid")
    models.Orders.objects.filter(id=orderid).update(status_code='0')
    return JsonResponse(respondict(True),json_dumps_params={'ensure_ascii':False})

###用户
#登录login
@csrf_exempt
def login(requests):
    phone=Paramvalue(requests,"phone")
    password=Paramvalue(requests,"password")

    print(phone+" "+password)
    # users=str2json(serializers.serialize("json",models.User.objects.filter(phone=phone),ensure_ascii=False))
    users=objecs2list(models.User.objects.filter(phone=phone))
    print(users)

    if users:
        print(users[0])
        if (users[0]["fields"]["password"] == str(password)):
            return JsonResponse(respondict(True,users[0]),json_dumps_params={'ensure_ascii':False})
        else:
            return JsonResponse(respondict(False, data="",other="errorpassword"),json_dumps_params={'ensure_ascii':False})
    else :
        return JsonResponse(respondict(False, data="",other="nouser"),json_dumps_params={'ensure_ascii':False})
    return JsonResponse(respondict(False, data="",other=  "unknow Exception"),json_dumps_params={'ensure_ascii':False})

###修改用户信息
@csrf_exempt
def alter_userinfo(requests):
    userid=Paramvalue(requests,"userid")
    key=Paramvalue(requests,"key")
    value=Paramvalue(requests,"value")

    if key=="username":
        models.User.objects.filter(id=userid).update(username=value)
    elif key=="position":
        models.User.objects.filter(id=userid).update(position=value)
    elif key == "phone":
        models.User.objects.filter(id=userid).update(phone=value)
    else:
        return JsonResponse(respondict(False,data="",other="errkey"),json_dumps_params={'ensure_ascii':False})
    return JsonResponse(respondict(False,
                                   objecs2list(models.User.objects.filter(id=userid)),
                                   other={"key":key,"value":value}),
                        json_dumps_params={'ensure_ascii': False})
#注册
@csrf_exempt
def check_user(requests):
    phone=Paramvalue(requests,"phone")
    username=Paramvalue(requests,"username")
    if phone:
        if(models.User.objects.filter(phone=phone)):
            return JsonResponse(respondict(False,
                                           data="register",
                                           other="this phone is register"),
                                json_dumps_params={'ensure_ascii': False})
        return JsonResponse(respondict(True,
                                               data="usable",
                                               other="this phone is usable"),
                                    json_dumps_params={'ensure_ascii': False})

    if username:
        if(models.User.objects.filter(username=username)):
            return JsonResponse(respondict(False,
                                           data="register",
                                           other="this username is register"),
                                json_dumps_params={'ensure_ascii': False})
        return JsonResponse(respondict(True,
                                               data="usable",
                                               other="this username is usable"),
                                    json_dumps_params={'ensure_ascii': False})



    return HttpResponse()




#注册
@csrf_exempt
def register_user(requests):
    user={
        'username':Paramvalue(requests,'username'),
        'password':Paramvalue(requests,'password'),
        'phone':Paramvalue(requests,'phone'),
        'position':'',
        'images':'/user/user1.jpg',
        'balance':'0',
        'wallet':'0',
        'coupon':'0',
        'giftcard':'0'
    }
    models.User.objects.create(**user)
    print(models.User.objects.values().last())
    return HttpResponse(models.User.objects.values().last())




# 工具
def respondict(status,data="",other=""):
    dict={
        "status":status,
        "data":data,
        "other":other

    }
    return dict

def str2json(data):
    import json
    list=json.loads(data)
    return list
def objecs2list(data):
    import  json
    sql_data = serializers.serialize("json", data, ensure_ascii=False)
    list = json.loads(sql_data)
    return list

def Paramvalue(res,param):
    pvalue=""
    if res.method == "POST":
        pvalue=res.POST.get(param)
    elif res.method == "GET":
        pvalue=res.GET.get(param)
    return pvalue