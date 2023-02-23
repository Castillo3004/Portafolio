import 'package:doggy/theme/app_theme.dart';
import 'package:flutter/material.dart';

final _coloresAleatorios = [
  Color.fromARGB(105, 56, 144, 244),
  Color.fromARGB(105, 255, 204, 137),
  Color.fromARGB(105, 224, 119, 90)

];

class CustomMascota extends StatelessWidget {

  final String imagen;
  final String  nombre;

  final int index; 

  const CustomMascota({
    Key? key, required this.imagen, required this.nombre, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: _coloresAleatorios[index % _coloresAleatorios.length],
          elevation: 0,
          animationDuration: Duration.zero,
          side: const BorderSide(width: 0, color: Colors.transparent),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5))
        ), 
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(imagen),
              ),
              Text(nombre, style: const TextStyle(color: AppTheme.primary, fontFamily: 'AveriaSansLibre', fontSize: 18),),
              const SizedBox(width: 30)
            ],
          ),
        )
      ),
    );
  }
}
