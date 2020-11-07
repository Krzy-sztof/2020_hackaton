

import math
import csv

from django.contrib.auth import logout, authenticate, login
from django.http import HttpResponse
from django.shortcuts import render, redirect
import pandas as pd
import requests
from django.views import View
from App1.forms import *
from .models import *
import json
import matplotlib

matplotlib.use('Agg')
from django.http import HttpResponse
from pylab import *
import io, base64
import urllib











class SearchOfferView(View):
    def get(self, request):
        form = SearchOfferForm()
        # return render(request, 'App1/form.html', {'form': form})
        return render(request, 'App1/form.html', {'form': form})

    def post(self, request):
        form = SearchOfferForm(request.POST)
        if form.is_valid():

            price = form.cleaned_data["price"]
            volume = form.cleaned_data["volume"]
            type = form.cleaned_data["type"]
            calorificValue = form.cleaned_data["calorificValue"]

            if price != "":
                offers = Offer.objects.filter(price = price)
                user_id = request.user.id
                user = User.objects.get(id=user_id)
                address = Address.objects.get(user=user_id)




        return render(request, 'App1/Offers.html', {'offers': offers})



class AddUserView(View):
    def get(self, request):
        form = AddUserForm()
        return render(request, 'App1/form.html', {'form': form})

    def post(self, request):
        form = AddUserForm(request.POST)
        if form.is_valid():
            login = form.cleaned_data["login"]
            password = form.cleaned_data["password"]
            name = form.cleaned_data["name"]
            surname = form.cleaned_data["surname"]
            mail = form.cleaned_data["mail"]
            User.objects.create_user(username=login, password=password, first_name=name, last_name=surname, email=mail)
            latitute = form.cleaned_data["latitute"]
            longitute = form.cleaned_data["longitute"]
            newUser = User.objects.get(username=login)



            Address.objects.create(user=newUser, latitute=latitute, longitute=longitute)
            return render(request, 'App1/form.html', {'form': form, 'info': "Użytkownik został dodany"})
        else:
            return render(request, 'App1/form.html', {'form': form})

class AddOfferView(View):
    def get(self, request):
        form = AddOfferForm()
        return render(request, 'App1/form.html', {'form': form})

    def post(self, request):
        form = AddOfferForm(request.POST)
        if form.is_valid():
            # login = form.cleaned_data["login"]
            # password = form.cleaned_data["password"]
            # name = form.cleaned_data["name"]
            # surname = form.cleaned_data["surname"]
            # mail = form.cleaned_data["mail"]
            # User.objects.create_user(username=login, password=password, first_name=name, last_name=surname, email=mail)
            # latitute = form.cleaned_data["latitute"]
            # longitute = form.cleaned_data["longitute"]
            # newUser = User.objects.get(username=login)

            price = form.cleaned_data["price"]
            volume = form.cleaned_data["volume"]
            type = form.cleaned_data["type"]
            calorificValue = form.cleaned_data["calorificValue"]
            user_id = request.user.id
            user = User.objects.get(id=user_id)

            Offer.objects.create(owner=user, price=price, volume=volume, type=type, calorificValue=calorificValue)


            return render(request, 'App1/form.html', {'form': form, 'info': "oferta została dodana"})
        else:
            return render(request, 'App1/form.html', {'form': form, 'info': "oferta nie została dodana"})



class LoginView(View):
    def get(self, request):
        form = LoginForm()
        return render(request, 'App1/form.html', {'form': form})

    def post(self, request):
        form = LoginForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data["login"]
            password = form.cleaned_data["password"]
            user = authenticate(username=username, password=password)

            if user is not None:
                login(request, user)
                return redirect("index")
            else:
                return render(request, 'App1/form.html', {'form': form, 'info': 'Błędny login lub hasło'})
        else:
            return render(request, 'App1/form.html', {'form': form})


class LogoutView(View):
    def get(self, request):
        logout(request)
        return redirect('index')


class ResetPasswordView(View):
    def get(self, request, user_id):
        form = ResetPasswordForm()
        return render(request, 'exercises/form.html', {'form': form})

    def post(self, request, user_id):
        form = ResetPasswordForm(request.POST)
        if form.is_valid():
            password = form.cleaned_data['password']
            u = User.objects.get(id=user_id)
            u.set_password(password)
            u.save()
            return render(request, 'exercises/form.html', {'form': form, 'info': "hasło zmienione"})
        else:
            return HttpResponse(" Nie udalo sie zmienic hasla")




class MyOfferView(View):
    def get(self, request):
        user_id = request.user.id
        x = User.objects.get(id=user_id)
        myoffers = x.offer_set.all()

        messages = Message.objects.filter(to_id=user_id)
        answers = Answer.objects.filter(from1=user_id)
        deniedanswers = DeniedAnswer.objects.filter(from1=user_id)

        return render(request, 'App1/MyOffers.html',
                      {'deniedanswers': deniedanswers,
                       'answers': answers,
                       'offers': myoffers,
                       'messages': messages})










