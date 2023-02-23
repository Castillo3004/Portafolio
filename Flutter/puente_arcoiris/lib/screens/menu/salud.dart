import 'package:flutter/material.dart';
import 'package:puente_arcoiris/services/firebase/firebase_service.dart';
import 'package:puente_arcoiris/widgets/input_personalizado.dart';

class SaludScreen extends StatelessWidget {

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController razaController = TextEditingController(text: '');
  TextEditingController edadController = TextEditingController(text: '');
  TextEditingController enfermedadController = TextEditingController(text: '');
  TextEditingController descripcionController = TextEditingController(text: '');

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
           child: Padding(
             padding: const EdgeInsets.all(30),
             child: Column(
              children: [
                InputPersonalizado(
                  controlador: nameController, // Con este controller se escuchan los cambios que se escribe en la caja de texto(Input) 
                  hintText: 'Ingrese el nombre',
                  labelText: 'Nombre',
                  
                ),
                InputPersonalizado(
                  controlador: razaController,
                  hintText: 'Ingrese la raza',
                  labelText: 'Raza',
                ),
                InputPersonalizado(
                  controlador: edadController,
                  hintText: 'Ingrese la edad',
                  labelText: 'Edad',
                  keyboardType: TextInputType.number,
                ),
                InputPersonalizado(
                  controlador:enfermedadController,
                  hintText: 'Ingrese la enfermedad',
                  labelText: 'Enfermedad',
                ),
                InputPersonalizado(
                  controlador: descripcionController,
                  hintText: 'Descripcion',
                  labelText: 'Descripcion',
                ),
                const SizedBox(height: 30), 
                ElevatedButton (
                  child: const Text('Guardar'),
                  onPressed: ()async{
                    await addUsers(nameController.text, razaController.text, int.parse(edadController.text), enfermedadController.text, descripcionController.text).then((value) => 
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: const Text('Datos Registrados'),
                          content: const Text('Tus datos se han registrado corrrectamente'),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Aceptar'))
                          ],
                        );
                      })
                    );
                    nameController.clear();     
                    razaController.clear();
                    edadController.clear();
                    enfermedadController.clear();
                    descripcionController.clear();           
                  }, 
                )
              ],
             ),
           ),
        ),
    );
  }
}