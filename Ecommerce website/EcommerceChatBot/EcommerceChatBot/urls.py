from django.urls import path, include
from django.contrib import admin


# import views

urlpatterns = [
    # path('', views.index, name='shopIndex'),
    path('admin/', admin.site.urls),
    path('shop/', include('Shop.urls')),
]
