from django.shortcuts import render
from django.http import HttpResponse
import time
# Create your views here.


def index(request):
    return render(request, 'index.html')


def login(request):
    return render(request, 'login.html')


def signup(request):
    return render(request, 'signup.html')


def contact(request):
    return render(request, 'contact.html')


def about(request):
    return render(request, 'about.html')

def checkout(request):
    return render(request, 'checkout.html')


def chat(request):
    return render(request, 'chat.html')


def cart(request):
    return render(request, 'cart.html')


def product_details(request):
    return render(request, 'productDetails.html')

