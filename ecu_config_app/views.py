from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse

# Create your views here.
def view_home_page(request):
  template = loader.get_template('ecu_config/home.html')
  return HttpResponse(template.render())