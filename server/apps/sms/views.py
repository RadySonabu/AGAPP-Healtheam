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



# Your Account SID from twilio.com/console
account_sid = "AC9d4fd54f9675ef82f836e4dd8636d13d"
# Your Auth Token from twilio.com/console
auth_token  = "1e7ea80cece7a4a94d5cbfa62705e195"

client = Client(account_sid, auth_token)


@receiver(post_save, sender=Message)
def send_sms_via_twilio(sender,instance, **kwargs): 
    print(instance.content)

    # or via other form but for this hackathon we will be using twilio
    message = client.messages.create(
        # to=f"{sender.receiver}", 
        to=f"{instance.receiver}",
        from_="+18325397610",
        body=f"{instance.content}"
        # body=f"{sender.content}:{sender.sender}")
    )

    # print(message.sid)
# post_save.connect(send_sms_via_twilio, sender=Message)