from rest_framework import serializers
from apps.user.models import MyUser
from django_restql.mixins import DynamicFieldsMixin

class MyUserSerializer(DynamicFieldsMixin, serializers.ModelSerializer):
    class Meta:
        model = MyUser
        # fields = ['id', 'username', 'email', 'contact_number', 'location']
        fields = "__all__"