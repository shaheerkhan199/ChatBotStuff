from django.urls import path


from . import views

urlpatterns = [
    path('', views.index, name='shopIndex'),
    path('login/', views.login, name='loginPage'),
    path('signup/', views.signup, name='signupPage'),
    path('contact/', views.contact, name='contact'),
    path('about/', views.about, name='about'),
    path('checkout/', views.checkout, name='Checkout'),
    path('chat/', views.chat, name='chat'),
    path('cart/', views.cart, name='cart'),
    path('product_details/', views.product_details, name='productDetails')
]
