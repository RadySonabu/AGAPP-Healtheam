from django.db import models

# Create your models here.
class Message(models.Model):
    sender = models.CharField(max_length=50, blank=True, null=True)
    content = models.CharField(max_length=160) # limit for a sms
    receiver = models.CharField(max_length=50)

    def __str__(self) -> str:
        return f'{self.sender}'
