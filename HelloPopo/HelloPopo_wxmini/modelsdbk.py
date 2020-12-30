# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Commodity(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    body = models.CharField(max_length=255, blank=True, null=True)
    comid = models.CharField(max_length=255, blank=True, null=True)
    preview = models.CharField(max_length=255, blank=True, null=True)
    url = models.CharField(max_length=255, blank=True, null=True)
    popular = models.CharField(max_length=255, blank=True, null=True)
    price = models.DecimalField(max_digits=10, decimal_places=0, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'commodity'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Orders(models.Model):
    shopcarid = models.TextField(blank=True, null=True)
    comid = models.TextField(blank=True, null=True)
    num = models.TextField(blank=True, null=True)
    total = models.DecimalField(max_digits=10, decimal_places=0)
    payway = models.CharField(max_length=255, blank=True, null=True)
    mealway = models.CharField(max_length=255, blank=True, null=True)
    status_code = models.CharField(max_length=255, blank=True, null=True)
    create_time = models.DateTimeField()
    userid = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'orders'


class Purchasehistory(models.Model):
    orderid = models.IntegerField(blank=True, null=True)
    total = models.CharField(max_length=255, blank=True, null=True)
    balance_now = models.IntegerField(blank=True, null=True)
    userid = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'purchasehistory'


class Shopcar(models.Model):
    comid = models.IntegerField(blank=True, null=True)
    com_title = models.CharField(max_length=255, blank=True, null=True)
    num = models.IntegerField(blank=True, null=True)
    price = models.DecimalField(max_digits=10, decimal_places=0, blank=True, null=True)
    total = models.DecimalField(max_digits=15, decimal_places=0, blank=True, null=True)
    size = models.CharField(max_length=255, blank=True, null=True)
    temp = models.CharField(max_length=255, blank=True, null=True)
    cream = models.CharField(max_length=255, blank=True, null=True)
    status = models.CharField(max_length=255, blank=True, null=True)
    status_code = models.CharField(max_length=255, blank=True, null=True)
    create_date = models.DateTimeField(blank=True, null=True)
    userid = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'shopcar'


class User(models.Model):
    username = models.CharField(max_length=255, blank=True, null=True)
    phone = models.CharField(max_length=255, blank=True, null=True)
    password = models.CharField(max_length=255, blank=True, null=True)
    position = models.CharField(max_length=255, blank=True, null=True)
    images = models.CharField(max_length=255, blank=True, null=True)
    balance = models.CharField(max_length=255, blank=True, null=True)
    wallet = models.CharField(max_length=255, blank=True, null=True)
    coupon = models.CharField(max_length=255, blank=True, null=True)
    giftcard = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'
