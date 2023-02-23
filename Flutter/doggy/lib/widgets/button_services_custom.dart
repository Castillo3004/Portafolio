import 'package:flutter/material.dart';

class ButtonServices extends StatelessWidget {

  final String titulo; 
  final String tipo; 
  final String imagenProducto; 
  final double puntuacion;
  final String ubicacion; 

  const ButtonServices({
    Key? key, 
    required this.titulo, 
    required this.imagenProducto, required this.puntuacion, required this.ubicacion, required this.tipo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(7, 151, 151, 150),
          shadowColor: Colors.transparent,
          minimumSize: const Size(340, 150),
          maximumSize: const Size(340, 150),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.zero,
        ), 
        child: SizedBox(
          width: 330,
          height: 130,
          child: Row(    
            children: [
              FadeInImage(
                placeholder: const AssetImage('assets/no-image.png'), 
                image: NetworkImage(imagenProducto),
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo, maxLines: 2, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(tipo, maxLines: 2, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
                  Row(
                    children: [
                      const SizedBox(height: 60),
                      const Icon(Icons.pin_drop, color: Colors.black54),
                      Text(ubicacion, style: const TextStyle(color: Colors.black54), maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                  Row(
                    children:[
                      const Icon(Icons.star_rate_rounded, color: Colors.grey,),
                      const SizedBox(width: 10),
                      Text('$puntuacion', style: const TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              )          
            ],
          ),
        ),
      ),
    );
  }
}