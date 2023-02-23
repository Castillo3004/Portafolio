import 'package:flutter/material.dart';
import 'package:puente_arcoiris/services/firebase/firebase_service.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';
import 'package:puente_arcoiris/widgets/input_personalizado.dart';

class FunerariaDatosScreen extends StatelessWidget {

  final titulo;

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController razaController = TextEditingController(text: '');
  TextEditingController edadController = TextEditingController(text: '');
  TextEditingController pesoController = TextEditingController(text: '');
  TextEditingController descripcionController = TextEditingController(text: '');

  FunerariaDatosScreen({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: _AppBarPersonalizado(titulo: titulo),
        backgroundColor: AppTheme.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Center(
           child: Padding(
             padding: const EdgeInsets.all(30),
             child: Column(
              children: [
                InputPersonalizado(
                  controlador: nameController,
                  hintText: 'Nombre',
                  labelText: 'Nombre',
                  keyboardType: TextInputType.name,
                ),
                InputPersonalizado(
                  controlador: razaController,
                  hintText: 'Raza',
                  labelText: 'Raza',
                  keyboardType: TextInputType.name,
                ),
                InputPersonalizado(
                  controlador: edadController,
                  hintText: 'Edad',
                  labelText: 'Edad',
                  keyboardType: TextInputType.number,
                ),
                InputPersonalizado(
                  controlador: pesoController,
                  hintText: 'Peso',
                  labelText: 'Peso',
                  keyboardType: TextInputType.number,
                ),
                InputPersonalizado(
                  controlador: descripcionController,
                  hintText: 'Descripcion',
                  labelText: 'Descripcion',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Guardar'),
                  onPressed: () async{
                    await addFunReg(nameController.text, 
                      razaController.text, 
                      int.parse(edadController.text),
                      titulo, 
                      double.parse(pesoController.text), 
                      descripcionController.text
                    ).then((value) => showDialog(
                      context: context, 
                      builder: (context){
                        return AlertDialog(
                          title: const Text('Datos Registrados'),
                          content: const Text('Tus datos se han registrado correctamente'),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Aceptar'))
                          ],
                        );
                      })
                    );
                    nameController.clear();
                    razaController.clear();
                    edadController.clear();
                    pesoController.clear();
                    descripcionController.clear();
                  }, 
                )
              ],
             ),
           )
        ),
      ),
    );
  }
}


class _AppBarPersonalizado extends StatelessWidget{

  final titulo;

  const _AppBarPersonalizado({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) { 

    // snapshot.then((id) =>print('${id[0]['titulo']})'));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(titulo, style: const TextStyle(color: Colors.black, fontFamily: 'Comic Neue')),
      ],
    );
  }


}