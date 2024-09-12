from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse


# Create your views here.
def view_ecuconfig_create(request):
  template = loader.get_template('ecuconfig_create/ecuconfig_create_page.html')
  return HttpResponse(template.render())