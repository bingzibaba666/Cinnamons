from django.shortcuts import render

# Create your views here.
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from django.core import serializers
from HelloPopo_background import  models
import json

###计算订单每个商品出现次数
#echarts
@csrf_exempt
def echar_count(request):
    return render(request=request,template_name="echarts/echart_count.html")


@csrf_exempt
def index(request):
    return render(request=request,template_name="index.html")


@csrf_exempt
def table(request):
    return render(request=request,template_name="table.html")
@csrf_exempt
def welcome(request):
    return render(request=request,template_name="welcome.html")