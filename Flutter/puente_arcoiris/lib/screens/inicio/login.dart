import 'package:flutter/material.dart';
import 'package:puente_arcoiris/routes/app-routes.dart';

import '../../widgets/widgets.dart';


class LoginScreen extends StatelessWidget {
  
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    
    return SizedBox(
      height: size.height*0.5,
      width: size.width*0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Bienvenido', style: TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 25)),       
          const InputPersonalizado(labelText: 'Correo', hintText: 'Correo', keyboardType: TextInputType.emailAddress ),      
          const InputPersonalizado(labelText: 'Contraseña', hintText: 'Contraseña',obscureText: true,), 
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, AppRoutes.rutaMenuNav);
            },
            child: 
            const Text(
              'Iniciar Sesion', 
              style: TextStyle(
                color: Colors.black, 
                fontFamily: 'Comic Neue', 
                fontSize: 16)
            ),
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text('¿Olvido su contraseña?', style: TextStyle(color: Colors.black, fontFamily: 'Comic Neue', fontSize: 16),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){}, 
                child: Image(
                  image: const AssetImage('assets/google.png'),
                  fit: BoxFit.cover,
                  height: size.height*0.038,
                )
              ),
              TextButton(
                onPressed: (){}, 
                child: Image(
                  image: const AssetImage('assets/facebook.png'),
                  fit: BoxFit.cover,
                  height: size.height*0.038,
                )
              )
            ],
          )
        ],
      ),
    );
  }
}