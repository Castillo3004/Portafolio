from django.forms import ModelForm
from django.utils.translation import gettext_lazy as _
from django import forms

from catastro.models import *

class CasaForm(ModelForm):
    class Meta:
        model = Casa
        fields = ['propietario', 'direccion', 'barrio', 'valor_bien', 'color', 'numero_cuartos', 'numero_pisos']

class DepartamentoForm(ModelForm):
    class Meta:
        model = Departamento
        fields = ['propietario', 'direccion', 'barrio', 'valor_bien', 'numero_cuartos', 'valor_mensual']

class PersonaForm(ModelForm):
    class Meta:
        model = Persona
        fields = ['nombres', 'apellidos', 'cedula', 'correo']

class BarrioForm(ModelForm):
    class Meta:
        model = Barrio
        fields = ['nombre', 'siglas'] 