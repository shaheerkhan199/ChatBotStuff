from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='shopIndex'),
    path('login/', views.login, name='loginPage'),
    path('signup/', views.signup, name='signupPage'),
    path('contact/', views.contact, name='contact'),
    path('about/', views.about, name='about'),
    path('checkout/', views.checkout, name='checkout'),
    path('chat/', views.chat, name='chat'),
    path('cart/', views.cart, name='cart'),
    path('product_details/<int:p_id>', views.product_details, name='productDetails'),
    path('store_data/', views.register_user, name='store_data'),
    
]
