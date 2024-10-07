from django.urls import path
from .views import View_event
app_name="main_process"
urlpatterns = [
    path('view_event/', View_event.as_view(), name='view_event'),
    
]