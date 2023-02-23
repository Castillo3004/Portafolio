import 'package:flutter/material.dart';

class CustomAppBarServices extends StatelessWidget {

  final String titulo; 
  
  const CustomAppBarServices({
    Key? key, required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
    children:[
      Text('$titulo | ', style: const TextStyle( fontFamily: 'AveriaSansLibre', fontSize: 22)), 
      const SizedBox(width: 20),
      const Image(image: AssetImage('assets/puente-arcoiris.png'), fit: BoxFit.cover, height: 60),
    ],
    );
  }
}