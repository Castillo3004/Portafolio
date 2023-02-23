from django.db import models

# Create your models here.


# ------------------------------- Persona -------------------------------

class Persona (models.Model):

    nombres = models.CharField(max_length=30)
    apellidos = models.CharField(max_length=30)
    cedula = models.CharField(max_length=10)
    correo = models.EmailField(max_length=50)

    def __str__(self):
        return "%s %s %s %s" % (self.nombres,
                                self.apellidos,
                                self.cedula,
                                self.correo)


# ------------------------------- Barrio -------------------------------

class Barrio (models.Model):
    nombre = models.CharField(max_length=50)
    siglas = models.CharField(max_length=3)

    def __str__(self):
        return "%s %s" % (self.nombre,
                          self.siglas)


# ------------------------------- Casa -------------------------------

class Casa (models.Model):
    propietario = models.ForeignKey(Persona, on_delete=models.CASCADE,
                                    related_name="los_propietarios")
    direccion = models.CharField(max_length=50)
    barrio = models.ForeignKey(Barrio, on_delete=models.CASCADE,
                               related_name="los_barrios")
    valor_bien = models.DecimalField(max_digits=100, decimal_places=2)
    color = models.CharField(max_length=20)
    numero_cuartos = models.IntegerField() 
    numero_pisos = models.IntegerField()

    def __str__(self):
        return "%s %s %s %s %s %s %s" % (self.propietario,
                self.direccion, 
                self.barrio,
                self.valor_bien,
                self.color,
                self.numero_cuartos,
                self.numero_pisos)

# ------------------------------- Departamento -------------------------------

class Departamento (models.Model):
    propietario = models.ForeignKey(Persona, on_delete=models.CASCADE,
                                    related_name="los_propietarios2")
    direccion = models.CharField(max_length=50)
    barrio = models.ForeignKey(Barrio, on_delete=models.CASCADE,
                               related_name="los_barrios2")
    valor_bien = models.DecimalField(max_digits=100, decimal_places=2)
    numero_cuartos = models.IntegerField() 
    valor_mensual = models.DecimalField(max_digits=100, decimal_places=2)

    def __str__(self):
        return "%s %s %s %s %s %s" % (self.propietario,
                self.direccion, 
                self.barrio,
                self.valor_bien,
                self.numero_cuartos,
                self.valor_mensual)