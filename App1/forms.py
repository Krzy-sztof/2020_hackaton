from django import forms
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
from django.core.validators import EmailValidator

from .models import *



class SearchOfferForm(forms.Form):
    type = forms.CharField(max_length=128, required=False)
    price = forms.CharField(max_length=128, required=False)
    calorificValue = forms.CharField(max_length=128, required=False)
    volume = forms.CharField(max_length=128, required=False)


def LoginValidator(value):
    x = User.objects.filter(username=value)
    if len(x) != 0:
        raise ValidationError("Taki login juz istnieje")


class AddUserForm(forms.Form):
    login = forms.CharField(label="login", validators=[LoginValidator])
    password = forms.CharField(label="password", widget=forms.PasswordInput(), )
    repeat_password = forms.CharField(label="repeat_password", widget=forms.PasswordInput())


    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get('password')
        repeat_password = cleaned_data.get('repeat_password')
        if password != repeat_password:
            raise forms.ValidationError('Hasla nie sa takie same')

    name = forms.CharField(label="name")
    surname = forms.CharField(label="surname")
    mail = forms.CharField(label="mail", validators=[EmailValidator])
    latitute = forms.FloatField(label="latitute")
    longitute = forms.FloatField(label="longitute")


class AddOfferForm(forms.Form):
    price = forms.FloatField(label="price")
    volume = forms.CharField(label="volume")
    type = forms.CharField(label="type")
    calorificValue = forms.CharField(label="calorificValue")

class LoginForm(forms.Form):
    login = forms.CharField(label='Login', max_length=120)
    password = forms.CharField(label='Password', max_length=120, widget=forms.PasswordInput)


class ResetPasswordForm(forms.Form):
    password = forms.CharField(label="password", widget=forms.PasswordInput())
    repeat_password = forms.CharField(label="repeat_password", widget=forms.PasswordInput())

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get('password')
        repeat_password = cleaned_data.get('repeat_password')
        if password != repeat_password:
            raise forms.ValidationError('Hasla nie sa takie same')


