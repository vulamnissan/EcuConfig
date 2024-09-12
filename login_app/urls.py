from django.urls import path
from . import views
app_name = 'login_app'
urlpatterns = [
    path('', views.view_login_page, name='login_view'),
    path('forgot_pass/', views.view_forgot_pass, name='forgot_pass'),
]