from django.contrib import admin

# Register your models here.
from HelloPopo_wxmini import  models
admin.site.register(models.Commodity)
admin.site.register(models.Shopcar)
