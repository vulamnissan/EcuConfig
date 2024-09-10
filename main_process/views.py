from django.shortcuts import render
from .models import *
# Create your views here.
def update_error_dim():
    Error_name,created=Error_dim.objects.get_or_create(
        Error_name="Error_1",
        defaults={"Error_name": "Error_1"}
                )
    
    if created:
        print("xxx")
    else:
        print("yyy")