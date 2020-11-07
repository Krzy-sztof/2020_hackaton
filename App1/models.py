from django.contrib.auth.models import User
from django.db import models






TYPE = (
    (1, "drzewna"),
    (2, "zielna"),
    (3, "rolnicza"),
    (4, "pochodzenia zwierzecego"),
    (5, "zanieczyszczona i przemysłowa"),
    (6, "mieszanina"),
)

TYPE2 = (
    (1, "buy"),
    (2, "sell"),
)

class Offer(models.Model):
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    price = models.FloatField()
    volume = models.FloatField()
    type = models.CharField(max_length=250, default=1)
    calorificValue = models.FloatField()
    sellOrBuy = models.IntegerField(choices=TYPE2, default=1)


class Address(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    latitute = models.FloatField()
    longitute = models.FloatField()

class Message(models.Model):
    offer = models.ForeignKey(Offer, on_delete=models.CASCADE)
    to = models.ForeignKey(User, on_delete=models.CASCADE, related_name="message_to_set")
    from1 = models.ForeignKey(User, on_delete=models.CASCADE, related_name="message_from_set")

class Answer(models.Model):
    offer = models.ForeignKey(Offer, on_delete=models.CASCADE,related_name="second_book")
    to = models.ForeignKey(User, on_delete=models.CASCADE, related_name="answer_to_set")
    from1 = models.ForeignKey(User, on_delete=models.CASCADE, related_name="answer_from_set")
    content = models.CharField(max_length=256, null=True)
    place = models.CharField(max_length=256, null=True)
    time = models.CharField(max_length=256, null=True)

class DeniedAnswer(models.Model):
    offer = models.ForeignKey(Offer, on_delete=models.CASCADE)
    to = models.ForeignKey(User, on_delete=models.CASCADE, related_name="deniedanswer_to_set")
    from1 = models.ForeignKey(User, on_delete=models.CASCADE, related_name="deniedanswer_from_set")
    content = models.CharField(max_length=256, null=True)










