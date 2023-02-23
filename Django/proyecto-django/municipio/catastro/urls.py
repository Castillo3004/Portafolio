from django.urls import path
# se importa las vistas de la aplicación
from . import views

urlpatterns = [
    # Casas
    path('casas', views.casas, name='casas'),
    path('crear/casa', views.crear_casa, name='crear_casa' ),
    path('editar/casa/<int:id>', views.editar_casa, name='editar_casa'),
    path('eliminar/casa/<int:id>', views.eliminar_casa, name='eliminar_casa'),
    
    # Departamentos
    path('departamentos', views.departamentos, name='departamentos'),
    path('crear/departamento', views.crear_departamento, name='crear_departamento' ),
    path('editar/departamento/<int:id>', views.editar_departamento, name='editar_departamento'),
    path('eliminar/departamento/<int:id>', views.eliminar_departamento, name='eliminar_departamento'),
    
    # Personas 
    path('personas', views.personas, name='personas'),
    path('crear/persona', views.crear_persona, name='crear_personas' ),
    path('editar/persona/<int:id>', views.editar_persona, name='editar_persona'),
    path('eliminar/persona/<int:id>', views.eliminar_persona, name='eliminar_persona'),


    # Barrios
    path('barrios', views.barrios, name='barrios'),
    path('crear/barrio', views.crear_barrio, name='crear_barrios' ),
    path('editar/barrio/<int:id>', views.editar_barrio, name='editar_barrio'),
    path('eliminar/barrio/<int:id>', views.eliminar_barrio, name='eliminar_barrio'),

    # Login y logout
    path('saliendo/logout/', views.logout_view, name="logout_view"),
    path('entrando/login/', views.ingreso, name="login"),
]
