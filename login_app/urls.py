from django.urls import path
from .views import Log_in,Forget_pass,home_view
app_name="login_app"
urlpatterns = [
    path('login/', Log_in.as_view(), name='login_view'),
    path('home/',home_view,name="home"),
    path("forgot_pass/",Forget_pass.as_view(), name="forgot_pass")
]