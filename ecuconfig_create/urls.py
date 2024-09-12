from django.urls import path
from . import views
app_name = 'ecuconfig_create_app'
urlpatterns = [
    path('', views.view_ecuconfig_create, name='ecuconfig_create_view'),
]