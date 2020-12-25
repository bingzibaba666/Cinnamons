"""cinnamons URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
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
from django.contrib import admin
from django.urls import path
from cntoolip import  views as cntoolip_

urlpatterns = [
    path('admin/', admin.site.urls),
    ##api
    path('cntool/api/ip',cntoolip_.cntoolip_api),
    path('cntool/api/getip',cntoolip_.get_ip_bypage),
    path('cntool/api/getheaders', cntoolip_.get_headers_bypage),

    #html
    path('index.html',cntoolip_.index_html),
    path('cntool/html/ip.html',cntoolip_.cntoolip_html),
    path('cntool/html/headers.html', cntoolip_.cntoolheaders_html)

]
