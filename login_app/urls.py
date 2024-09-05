from django.urls import path
from .views import Log_in,Forget_pass,home_view

urlpatterns = [
    path('login/', Log_in.as_view(), name='login_view'),
    path('home/',home_view,name="home")
]