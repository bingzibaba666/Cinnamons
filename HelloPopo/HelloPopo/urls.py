"""HelloPopo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.urls import path

from HelloPopo_wxmini import views as wx_mini_view
from HelloPopo_background import  views as wx_bg_view
from HelloPopo_background import  url_views as wx_bg_url
wx_mini="wx_mini/"
wx_bg="wx_bg/"
suffix='.html'
urlpatterns = [
    path('admin/', admin.site.urls),
    path('get_allcoms',wx_mini_view.get_allcoms),
    path('get_coms_bytype', wx_mini_view.get_coms_bytype),
    path('get_coms_bypage', wx_mini_view.get_coms_bypage),
    path('get_coms_byid', wx_mini_view.get_coms_byid),
    path('save_shopcar', wx_mini_view.save_shopcar),
    path('get_shopcars', wx_mini_view.get_shopcars),
    path('get_shopcars_alive', wx_mini_view.get_shopcars_alive),
    path('wash_shopcar', wx_mini_view.wash_shopcar),
    path('set_order', wx_mini_view.set_order),
    path('get_allorders', wx_mini_view.get_allorders),
    path('get_orders_bycode', wx_mini_view.get_orders_bycode),
    path('login', wx_mini_view.login),
    path('update_order_todead', wx_mini_view.update_order_todead),
    path('alter_userinfo', wx_mini_view.alter_userinfo),
    path('check_user', wx_mini_view.check_user),
    path('register_user', wx_mini_view.register_user),

    ###bg : ajax_url
    path(wx_bg + 'api_test', wx_bg_view.api_test),
    path(wx_bg+'count_order_coms',wx_bg_view.count_order_coms),
    path(wx_bg+'count_shopcar_coms',wx_bg_view.count_shopcar_coms),
    path(wx_bg+'count_order_flavor',wx_bg_view.count_order_flavor),
    path(wx_bg + 'delete_coms_byId', wx_bg_view.delete_coms_byId),

    path(wx_bg + 'update_coms', wx_bg_view.update_coms),

    ###bg : url
    path(wx_bg + 'index'+suffix, wx_bg_url.index),
    path(wx_bg+'echar_count'+suffix,wx_bg_url.echar_count),
    path(wx_bg + 'table' + suffix, wx_bg_url.table),
    path(wx_bg + 'welcome' + suffix, wx_bg_url.welcome),

]
