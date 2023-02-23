
from django.contrib import admin
from django.urls import path, include
from django.conf import settings 
from django.contrib.auth import views as auth_views

from rest_framework import routers
from catastro import views

router = routers.DefaultRouter()
router.register(r'users', views.UserViewSet)
router.register(r'groups', views.GroupViewSet)
router.register(r'personas', views.PersonaViewSet)
router.register(r'barrios', views.BarrioViewSet)
router.register(r'casas', views.CasaViewSet)
router.register(r'departamentos', views.DepartamentoViewSet)




urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('catastro.urls')),
    path('accounts/', include('allauth.urls')),
    path('api/', include(router.urls)),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
