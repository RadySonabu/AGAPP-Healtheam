from django.shortcuts import render
from rest_framework import serializers, viewsets
from .models import Message
from .serializers import MessagingSerializer
import os
from twilio.rest import Client
from django.dispatch import receiver
from django.db.models.signals import pre_save,post_save
class MessagingViewSet(viewsets.ModelViewSet):
    queryset = Message.objects.all()
    serializer_class = MessagingSerializer






@receiver(post_save, sender=Message)
def send_sms_via_twilio(sender,instance, **kwargs): 
    # Your Account SID from twilio.com/console
    account_sid = "AC9d4fd54f9675ef82f836e4dd8636d13d"
    # Your Auth Token from twilio.com/console
    auth_token  = "5209254d4b54fb44482b989b4e9b5f80"

    client = Client(account_sid, auth_token)
    print(type(instance.content))
    print(type(instance.receiver))
    # or via other form but for this hackathon we will be using twilio
    message = client.messages.create(
        # to=f"{sender.receiver}", 
        to=f"{instance.receiver}",
        # to="+639279107589",
        from_="+18325397610",
        # body='qweqweqweqwe'
        body=f"{instance.content}"
        # body=f"{sender.content}:{sender.sender}")
    )

    # print(message.sid)
# post_save.connect(send_sms_via_twilio, sender=Message)