from django.contrib import admin
from django.urls import path, include
from graph_wrap.django_rest_framework.graphql_view import graphql_view  # Addition 1: import the graphql_view
from .views import MessagingViewSet
from rest_framework import routers, views
router = routers.SimpleRouter()
router.register(r'sms', MessagingViewSet)
urlpatterns = [
    path("", include("rest_framework.urls")),
    path('', include(router.urls)),
    path('graphql/', view=graphql_view),
]
