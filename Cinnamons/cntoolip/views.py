from django.shortcuts import render

# Create your views here.

from django.core import serializers
from django.http import HttpResponse, JsonResponse
from django.core.paginator import  Paginator
from cntoolip import  models
import json


def cntoolip_api(request):
    model = models.Cntoolip.objects.all()
    sql_list = serializers.serialize("json",model,ensure_ascii=False)
    print(sql_list)
    return JsonResponse({
        'code':200,
        'date':sql_list
    },
    json_dumps_params={'ensure_ascii':False})
    # return HttpResponse(sql_list)

def get_ip_bypage(request):
    page = Paramvalue(res=request,param='page')
    pageSize = Paramvalue(res=request, param="limit")
    print(page)
    res = {}
    sql_data = models.Cntoolip.objects.all()
    print(sql_data)
    ptr=Paginator(sql_data,pageSize)
    data=ptr.page(page)
    res['list']=format_sql_models(json.loads(serializers.serialize('json',data)))
    res['total']=ptr.count
    print(res)
    return JsonResponse({
        'data':res
    })

def get_headers_bypage(request):
    page = Paramvalue(res=request, param='page')
    pageSize = Paramvalue(res=request, param="limit")
    print(page)
    res = {}
    sql_data = models.Cntoolheaders.objects.all()
    print(sql_data)
    ptr = Paginator(sql_data, pageSize)
    data = ptr.page(page)
    res['list'] = format_sql_models(json.loads(serializers.serialize('json', data)))
    res['total'] = ptr.count
    print(res)
    return JsonResponse({
        'data': res
    })

##url
def cntoolip_html(request):
    return render(request=request,template_name="tabletmp/cntoolip.html")

def cntoolheaders_html(request):
    return render(request=request,template_name="tabletmp/cntoolheaders.html")

def index_html(request):
    return render(request=request,template_name="index.html")



def Paramvalue(res,param):
    pvalue=""
    if res.method == "POST":
        pvalue=res.POST.get(param)
    elif res.method == "GET":
        pvalue=res.GET.get(param)
    return pvalue

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