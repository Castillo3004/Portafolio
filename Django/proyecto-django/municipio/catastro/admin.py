from django.contrib import admin

# Register your models here.

from catastro.models import *


class PersonaAdmin(admin.ModelAdmin):

    list_display = ('nombres', 'apellidos', 'cedula', 'correo')
    search_fields = ('nombres', 'apellidos', 'cedula')


admin.site.register(Persona, PersonaAdmin)


class BarrioAdmin(admin.ModelAdmin):

    list_display = ('nombre', 'siglas')
    search_fields = ('nombre', 'siglas')


admin.site.register(Barrio, BarrioAdmin)


class CasaAdmin(admin.ModelAdmin):

    list_display = ('propietario', 'direccion', 'barrio',
                    'valor_bien', 'color', 'numero_cuartos',
                    'numero_pisos')
    raw_id_fields = ('propietario', 'barrio',)

admin.site.register(Casa, CasaAdmin)


class DepartamentoAdmin(admin.ModelAdmin):

    list_display = ('propietario', 'direccion', 'barrio',
                    'valor_bien', 'numero_cuartos', 'valor_mensual')
    raw_id_fields = ('propietario', 'barrio',)

admin.site.register(Departamento, DepartamentoAdmin)
