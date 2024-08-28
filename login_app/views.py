from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse

# Create your views here.
def view_login_page(request):
  template = loader.get_template('login/login_page.html')
  return HttpResponse(template.render())
