from django.shortcuts import render
from django.http import HttpResponse
import time
from Shop.models import Customer, Product, Category, Sub_Category_Attributes, Supplier, Attributes_Data
# Create your views here.
from .shopping_bot import myBot

def index(request):
    all_products = Product.objects.all()
    data = {
        'products': all_products
    }
    # print(all_products[0].ProductName)

    return render(request, 'index.html', data)

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

def product_details(request,p_id):
    # print(p_id)
    details_of_click_product = Product.objects.get(pk=p_id)
    data = {
        'product_details': details_of_click_product
    }
    return render(request, 'productDetails.html', data)

def register_user(request):
    first_name = request.POST.get("first_name")
    last_name = request.POST.get("last_name")
    email = request.POST.get("email")
    phone = request.POST.get("phone")
    password = request.POST.get("password")
    city = request.POST.get("city")
    state = request.POST.get("state")
    postalCode = request.POST.get("postalCode")
    country = request.POST.get("country")
    address = request.POST.get("address")
    new_customer = Customer(CustomerFirstName=first_name,CustomerLastName=last_name,CustomerEmailAddress=email
    ,CustomerPassword=password,CustomerAddress=address,CustomerPhone=phone,CustomerCity=city,CustomerState=state,
    CustomerPostalCode=postalCode,CustomerCountry=country )
    new_customer.save()
    #print(first_name,last_name,email,phone,password,city,state,postalCode,country,address)
    return render(request, 'login.html')
    
def get_bot_response(request):
    user_input = request.GET.get('msg')
    print(user_input)
    bot_response = myBot.get_response(user_input)
    print(bot_response)
    print("For debugging")
    output = {'botResponse': bot_response}
    # return render(request, 'chatWindow.html', output)
    return HttpResponse(bot_response)