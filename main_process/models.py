from django.db import models
from django.contrib.auth.models import AbstractUser, Group
from django.contrib.auth.models import Permission, GroupManager
from django.conf import settings

class Ecu(models.Model):
    ecu_name =  models.CharField(max_length = 50,unique = True)

class Unit(models.Model):
    unit_name = models.CharField(max_length = 50,unique = True)

class Department(models.Model):
    department_name=models.CharField(max_length = 100,unique = True)

class Project_info(models.Model):
    model_name = models.CharField(max_length = 50)
    fy_name = models.CharField(max_length = 10)
    plant_name = models.CharField(max_length = 50)
    des_name = models.CharField(max_length = 255)
    lot_name = models.CharField(max_length = 50)
    class Meta:
        constraints = [
            models.UniqueConstraint(fields=['model_name', 'fy_name','plant_name','des_name','lot_name'],name="p_i")
        ]

class Issue(models.Model):
    project_info_id = models.ForeignKey(Project_info,on_delete=models.CASCADE)
    can_name = models.CharField(max_length = 100,null=True)
    past_issue_error = models.CharField(max_length = 255,null=True)
    issue = models.CharField(max_length = 255)
    reason_mistake = models.TextField(null=True)
    incorrect_value = models.CharField(max_length = 255,null=True)
    correct_value = models.CharField(max_length = 255,null=True)
    comment_des = models.TextField(null=True)
    updated_date = models.CharField(max_length = 255,null=True)
    status = models.CharField(max_length = 255,null=True)
    condition_apply = models.TextField(null=True)
    class Meta:
        constraints = [
        models.UniqueConstraint(fields=['project_info_id', 'issue'],name="i")
        ]

class Event_infor(models.Model):
    project_info_id = models.ForeignKey(Project_info,on_delete = models.CASCADE)
    event_name = models.CharField(max_length=255)
    status = models.CharField(max_length=20,null=True)
    gdr = models.CharField(max_length=255,null=True)
    storage_period = models.CharField(max_length=255,null=True)
    trim_mrd = models.CharField(max_length=255,null=True)
    event_coordinator = models.CharField(max_length=255,null=True)
    base_event = models.CharField(max_length=255,null=True)
    spec_link = models.TextField(max_length=2100,null=True)
    mnemoic_link = models.TextField(max_length=2100,null=True)
    spec_cate_link = models.TextField(max_length=2100,null=True)
    class Meta:
        constraints = [
        models.UniqueConstraint(fields=['project_info_id', 'event_name'],name="e_i")
        ]

class Config(models.Model):
    event_infor_id=models.ForeignKey(Event_infor,on_delete=models.CASCADE)
    ecu_id=models.ForeignKey(Ecu,on_delete=models.CASCADE)
    Config_infor=models.JSONField()

class Custom_user(AbstractUser):
    knt=models.CharField(max_length=10)
    name_jp=models.CharField(max_length=50)
    position=models.CharField(max_length=20, null=True)
    #groups=models.ManyToManyField(Department_unit,through="UserGroup")
class Department_unit(models.Model):
    unit_id=models.ForeignKey(Unit,on_delete=models.CASCADE)
    department_id=models.ForeignKey(Department,on_delete=models.CASCADE)
    # objects = GroupManager()
    class Meta:
        constraints = [
        models.UniqueConstraint(fields=['unit_id', 'department_id'],name="d_u")
        ]
   

class Group_infor(models.Model):
    group_id = models.ForeignKey(Department_unit, on_delete=models.CASCADE)
    user_id=models.ForeignKey(Custom_user,on_delete=models.CASCADE)
    # Thêm các trường tùy chỉnh
    code = models.CharField(max_length=50, blank=True, null=True)
    class Meta:
        constraints = [
            models.UniqueConstraint(fields=['group_id', 'user_id'],name="g_i")
            ]


class Manage_project(models.Model):
    event_infor_id=models.ForeignKey(Event_infor,on_delete=models.CASCADE)
    group_id=models.ForeignKey(Group_infor, on_delete=models.CASCADE)
    class Meta:
        constraints = [
            models.UniqueConstraint(fields=['event_infor_id', 'group_id'],name="m_p")
            ]