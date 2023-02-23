import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': ''
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input y Forms')
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField( labelText: 'Nombre', hintText: 'Nombre del Usuario', formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30),
          
                CustomInputField( labelText: 'Apellido', hintText: 'Apellido del Usuario', formProperty: 'last_name', formValues: formValues),
                const SizedBox(height: 30),
                
                CustomInputField( labelText: 'Correo', hintText: 'Correo del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox(height: 30),
          
                CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox(height: 30),
          
                DropdownButtonFormField(
                  hint: const Text('Rol'),
                  items: const [
                    DropdownMenuItem(value:'Admin',child: Text('Admin')),
                    DropdownMenuItem(value:'Superuser',child: Text('Superuser')),
                    DropdownMenuItem(value:'Developer',child: Text('Developer')),
                    DropdownMenuItem(value:'Developer Jr',child: Text('Developer Jr')),
                  ], 
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text('Guardar'))
                  ), 
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode()); // Para quitar el puntero y bajar el teclado

                    if (!myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }

                    //* imprimir  valores del formulario
                    print(formValues);
                  },
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}


