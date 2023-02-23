import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class RegistrarseScreen extends StatelessWidget {
   
  const RegistrarseScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height*0.5,
      width: size.width*0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              InputPersonalizado(labelText: 'Nombre', hintText: 'Nombre'),
              InputPersonalizado(labelText: 'Apellido', hintText: 'Apellido'),
              InputPersonalizado(labelText: 'Correo', hintText: 'Correo', keyboardType: TextInputType.emailAddress),
              InputPersonalizado(labelText: 'Contraseña', hintText: 'Contraseña', obscureText: true),
              InputPersonalizado(labelText: 'Telefono', hintText: 'Telefono', keyboardType: TextInputType.phone),
            ],
          ),     
          ElevatedButton(
            onPressed: (){}, 
            child: const Text(
              'Registrarse',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Comic Neue',
                fontSize: 16
              ),
            )
          )
        ],
      ),
    );
  }
}