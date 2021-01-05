from django.shortcuts import render

# Create your views here.
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from django.core import serializers
from HelloPopo_background import  models
import json




@csrf_exempt
def api_test(request):
    text=Paramvalue(res=request,param="text")
    data= Paramvalue(res=request, param="django_data")
    print(request.get_full_path())
    print(data)
    return HttpResponse(request)



###统计商品被购买的次数（加入购物车）
@csrf_exempt
def count_order_coms(request):
    sql_data=models.Orders.objects.all()
    sql_list = serialize_list(sql_data)

    count_dict={}
    ###计算订单每个商品出现次数 (出现次数为 次数×数量 和)
    for item in sql_list:


        comids=json.loads(item['fields']['comid'])

        nums = json.loads(item['fields']['num'])
        for index in range(len(comids)):
            print()
            com_name = models.Commodity.objects.filter(id=comids[index]).values()[0]['title']
            if com_name not in count_dict.keys():
                count_dict[com_name]=int(nums[index])
            else:
                count_dict[com_name]+=int(nums[index])
    print(count_dict)

    count_dict=dict(sorted(count_dict.items(), key=lambda d: d[1]))
    print(count_dict)
    ###整理count dict 成list
    return_dict = {}
    keylist=[]
    valuelist=[]
    for key,value in count_dict.items():
        keylist.append(key)
        # keylist.append(models.Commodity.objects.filter(id=key).values()[0]['title'])
        valuelist.append(value)


    return JsonResponse(
        {'code':200,'data':{
            'key':keylist,
            'value':valuelist
        }},
           json_dumps_params={'ensure_ascii': False})



###统计商品被加入购物车的次数
@csrf_exempt
def count_shopcar_coms(request):
    sql_data=models.Shopcar.objects.all()
    sql_list = serialize_list(sql_data)
    count_dict = {}
    for item in sql_list:
        comid=item['fields']['comid']
        com_name=item['fields']['com_title']
        if com_name not in count_dict.keys():
            count_dict[com_name]=1
        else :
            count_dict[com_name]+=1
    count_dict = dict(sorted(count_dict.items(), key=lambda d: d[1]))
    print(count_dict)
    keylist=[]
    valuelist=[]
    for key,value in count_dict.items():
        keylist.append(key)
        valuelist.append(value)
    return JsonResponse(
        {'code': 200, 'data': {
            'key': keylist,
            'value': valuelist
        }},
        json_dumps_params={'ensure_ascii': False}
    )

###统计订单商品的口味次数
def count_order_flavor(request):
    sql_data = models.Orders.objects.all()
    sql_list = serialize_list(sql_data)

    indicator={
        'big':0,
        'small':0,
        'hot':0,
        'cold':0,
        'cream':0,
        'uncream':0

    }
    count_dict = {}
    count_list=[]
    ###计算订单每个商品出现次数 (出现次数为 次数×数量 和)
    for item in sql_list:
        comids = json.loads(item['fields']['comid'])

        nums = json.loads(item['fields']['num'])
        shopcarids=json.loads(item['fields']['shopcarid'])
        for shopcarid in shopcarids:

            shopcar_dict={}
            shopcar=serialize_list(models.Shopcar.objects.filter(id=shopcarid))[0]
            com_name=shopcar['fields']['com_title']
            size=shopcar['fields']['size']
            temp=shopcar['fields']['temp']
            cream=shopcar['fields']['cream']

            num=int(shopcar['fields']['num'])

            ### ieator count_list.keys()
            # print(count_list)

            # if not count_list or com_name not  in list(set([(list(item.keys())[0]) for item in count_list])):
            if not count_dict or com_name not in list(count_dict.keys()):

                flavor_dict=dict(indicator)
                count_dict[com_name]=flavor_dict
            else:
                flavor_dict=count_dict[com_name]
            flavor_dict[size] += num
            flavor_dict[temp] += num
            flavor_dict[cream] += num
            count_dict[com_name] = flavor_dict

    ###count_dict 数据字典 key:商品名 value:indicatorto统计
    rader_list={
        'indicator':list(indicator.keys()),
        'legend':list(count_dict.keys()),
        'values':[list(item.values()) for item in count_dict.values()]
    }

    print(rader_list)

    return JsonResponse({
        'code':200,
        'data':rader_list
    },json_dumps_params={'ensure_ascii': False})

###Table的操作
# delete by id  删除根据pk
@csrf_exempt
def delete_coms_byId(request):
    pk = Paramvalue(request,"pk")
    sql_data=serializers.serialize("json",models.Commodity.objects.filter(pk=pk),ensure_ascii=False)
    models.Commodity.objects.filter(pk=pk).delete()

    print(sql_data)
    return JsonResponse({
        'code':200,
        'data':sql_data
    })
@csrf_exempt
def update_coms(request):
    new_commodity=dict(json.loads(Paramvalue(request,"commodity")))
    old_commodity_sql=serializers.serialize("json",models.Commodity.objects.filter(pk=new_commodity['pk']),ensure_ascii=False)
    old_commodity=json.loads(old_commodity_sql)[0]['fields']
    old_commodity["pk"]=json.loads(old_commodity_sql)[0]["pk"]

    for key,value in new_commodity.items():
        old_commodity[key]=new_commodity[key]
        # print()

    models.Commodity.objects.filter(pk=old_commodity['pk']).update(title=old_commodity["title"],
                                                                   body=old_commodity["body"],
                                                                   comid=old_commodity["comid"],
                                                                   preview=old_commodity["preview"],
                                                                   url=old_commodity["url"],
                                                                   popular=old_commodity["popular"],
                                                                   price=old_commodity["price"],
                                                                   type=old_commodity["type"])
    return JsonResponse({
        'code': 200,
        'data': old_commodity
    }, json_dumps_params={'ensure_ascii': False})


def serialize_list(data):
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
