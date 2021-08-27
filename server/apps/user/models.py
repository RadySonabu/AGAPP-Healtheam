from django.db import models
from django.contrib.auth.models import AbstractUser


class MyUser(AbstractUser):
    contact_number = models.CharField(max_length=50)
    location = models.CharField(max_length=500)

    def __str__(self) -> str:
        return f'{self.contact_number} - {self.location}'