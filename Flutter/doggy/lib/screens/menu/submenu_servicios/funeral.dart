import 'package:doggy/providers/firebase/firebase_service.dart';
import 'package:doggy/theme/app_theme.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FuneralScreen extends StatelessWidget {

  TextEditingController nombreController = TextEditingController(text: '');
  TextEditingController razaController = TextEditingController(text: '');
  TextEditingController edadController = TextEditingController(text: '');
  TextEditingController fechaController = TextEditingController(text: '');
  String? plan; 
   
  FuneralScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarServices(titulo: 'Funeral',),
        elevation: 0,
        backgroundColor: const Color(0xffE2AF6E),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
           children: [
             const SizedBox(height: 15),
             const Text('Datos de tu Mascota', style: TextStyle(color: AppTheme.primary, fontSize: 25, fontFamily: 'AveriaSansLibre')),
             const SizedBox(height: 35),
            CustomInputField(controller: nombreController,labelText: 'Nombre Mascota',hintText: 'Nombre Mascota',suffixIcon: Icons.pets_sharp, keyboardType: TextInputType.name),
             const SizedBox(height: 25),
            CustomInputField(controller: razaController,labelText: 'Raza',hintText: 'Raza',suffixIcon: Icons.workspaces_outline, keyboardType: TextInputType.name),
             const SizedBox(height: 25),
            CustomInputField(controller: edadController,labelText: 'Edad',hintText: 'Edad',suffixIcon: Icons.cake, keyboardType: TextInputType.number),
             const SizedBox(height: 25),
            CustomInputField(controller: fechaController,labelText: 'Fecha Fallecimiento',hintText: 'Fecha Fallecimiento',suffixIcon: Icons.date_range),
             const SizedBox(height: 25),
             DropdownButtonFormField(
               hint: const Text('Selecciona el Plan'),
               borderRadius: BorderRadius.circular(20),
               items: [
                 DropdownMenuItem(value: 'Plan Basico | Cremación', child: Row(
                   children: const [
                     ImageIcon(AssetImage('assets/cenizas.png'), color: AppTheme.primary),
                     SizedBox(width: 10),
                     Text('Plan Basico | Cremación', style: TextStyle(color: AppTheme.primary)),
                   ],
                 )),
                 DropdownMenuItem(value: 'Plan Medio | Funeral', child: Row(
                   children: const [
                     ImageIcon(AssetImage('assets/lazo-negro.png'), color: AppTheme.primary),
                     SizedBox(width: 10),
                     Text('Plan Medio | Funeral', style: TextStyle(color: AppTheme.primary)),
                   ],
                 )),
                 DropdownMenuItem(value: 'Plan Premiun | Funeral y Cremación', child: Row(
                   children: const [
                     ImageIcon(AssetImage('assets/placa.png'), color: AppTheme.primary),
                     SizedBox(width: 10),
                     Text('Plan Premiun | Funeral y Cremación', style: TextStyle(color: AppTheme.primary)),
                   ],
                 )),
               ], 
               onChanged: (value){
                plan = value;
               }
             ),
             const SizedBox(height: 25),
             SizedBox(
               width: double.infinity,
               height: 50,
               child: ElevatedButton(
                 child: const Text('Guardar'),
                 onPressed: () async{
                  await agregarFuneral(
                    nombreController.text, 
                    razaController.text, 
                    int.parse(edadController.text), 
                    fechaController.text, 
                    plan!
                  ).then((value) => showDialog(
                    context: context, 
                    builder: (context){
                      return AlertDialog(
                        title: const Text('Registrado con Exito'),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        content: Text('${nombreController.text} registrado con exito \nLamentamos tu perdida'),
                        actions: [
                          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Aceptar', style: TextStyle(color: AppTheme.primary),))
                        ],
                      );
                    })
                  );
                  nombreController.clear();
                  razaController.clear();
                  edadController.clear();
                  fechaController.clear();
                  
                 } 
               ),
             )
           ],
          ),
        ),
      ),
    );
  }
}
