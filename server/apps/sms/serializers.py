from rest_framework import serializers
from .models import Message
from django_restql.mixins import DynamicFieldsMixin

class MessagingSerializer(DynamicFieldsMixin, serializers.ModelSerializer):
    class Meta:
        model = Message
        # fields = ['id', 'username', 'email', 'contact_number', 'location']
        # fields = "__all__"
        exclude = ['sender']