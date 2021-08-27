
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api-1/', include('apps.user.urls')),
    path('api-2/', include('apps.sms.urls')),

]
