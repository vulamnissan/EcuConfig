from django.shortcuts import render,HttpResponse
from .models import *
from django.views import View
import pandas as pd
# Create your views here.
class View_event(View):
    def get(self, request):
        return render(request,"view_event/form_draft.html")
    def post(self,request):
        
        action=request.POST.get("action")
        print(action)
        if action=="list_ecu":
            dict_ecu={}
            list_ecu=list(Ecu.objects.values_list('ecu_name',flat=True))
            for index,ecu in enumerate(list_ecu):
                dict_ecu[str(index+1)]=ecu

            print(dict_ecu)
            return HttpResponse(dict_ecu)
            
        if action=="list_event":
            dict_all_events={"Events":[]}
            ecuid=Ecu.objects.get(ecu_name="BCM").id
            cofig_filter=Config.objects.filter(ecu_id=ecuid)
            for config in cofig_filter:
                dict_event={"id_config": config.id, 
                            'Project': config.event_infor_id.project_info_id.model_name,
                            'Event': config.event_infor_id.project_info_id.fy_name,
                            'Plant': config.event_infor_id.project_info_id.plant_name,
                            'Destination': config.event_infor_id.project_info_id.des_name,
                            'Lot': config.event_infor_id.project_info_id.lot_name,
                            'Status': config.event_infor_id.status,
                            '技連回答期限': config.event_infor_id.gdr,
                            '格納期限': config.event_infor_id.storage_period,
                            'Trim_in_MRD': config.event_infor_id.trim_mrd,
                            'EventOwner': config.event_infor_id.event_coordinator,
                            'BaseEvent': config.event_infor_id.base_event
                            }
                dict_all_events['Events'].append(dict_event)

            return HttpResponse(f"<h1>{dict_all_events}</p>")
            


