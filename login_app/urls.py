from django.urls import path
from . import views

urlpatterns = [
    path('', views.view_login_page, name='login_view'),
]