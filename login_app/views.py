
from django.template import loader
from django.http import HttpResponse
from django.shortcuts import render, HttpResponse,redirect
from django.views import View
from django.contrib.auth import authenticate, login, decorators
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from django.conf import settings
from django.contrib.auth.models import User
# Create your views here.
# def view_login_page(request):
#   template = loader.get_template('login/login_page.html')
#   return HttpResponse(template.render())

# Create your views here.
class Log_in(View):
    def get(self,request):
        context={"user":""}
        return render(request,"login/login_page.html", context)
    def post(self,request):
        user_name=request.POST.get("username")
        password=request.POST.get("password")
        
        my_user= authenticate(username=user_name,password=password)
        if my_user is None:
            return HttpResponse("result")   ## khi nhập sai trả về kết quả 
        else:
        
            login(request,my_user)
            next_url = request.POST.get('next', 'home')
            return redirect(next_url)
        

class Forget_pass(View):
    def get(self,request):
        return render(request,"login/forgot_pass.html",{"notice":""})
    
    def post(self,request):
        receiver_email=request.POST.get("email")
        email_exists = User.objects.filter(email=receiver_email).exists() 
        if email_exists:
            smtp_port = getattr(settings, 'SMTP_PORT')
            smtp_server = getattr(settings, 'SMTP_SERVER')
            password = getattr(settings, 'PASSWORD')
            sender_email=getattr(settings, 'SENDER_EMAIL')

            # Define the receiver email
            # receiver_email = "vann-phammmmmmm@mail.nissan.co.jp"

            subject = "Reset password web config"
            body = """\
            Reset password web config
            ."""

            # Create the email message
            message = MIMEMultipart()
            message["From"] = sender_email
            message["To"] = receiver_email
            message["Subject"] = subject

            # Attach the email body to the message
            message.attach(MIMEText(body, "plain"))

            # Establish a connection to the SMTP server and send the email
            try:
                # Connect to the SMTP server
                with smtplib.SMTP(smtp_server, smtp_port) as server:
                    server.ehlo()
                    server.starttls()  # Secure the connection
                    server.login(sender_email, password)  # Log in to the SMTP server
                    server.sendmail(
                        sender_email, receiver_email, message.as_string()
                    )  # Send the email
                return render(request,"authentication/forget_pass.html",{"notice":"Successfull!!!"})
            except Exception as e:
                return render(request,"authentication/forget_pass.html",{"notice":"Error Server"})
            
        else:
            return render(request,"authentication/forget_pass.html",{"notice":"Email is not registered "})
        

from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required
def home_view(request):
    return render(request, 'ecu_config/home.html')
