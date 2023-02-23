import 'package:flutter/material.dart';

class ButtonMarket extends StatelessWidget {

  final double precio; 
  final String descripcion; 
  final String imagenProducto; 

  const ButtonMarket({
    Key? key, 
    required this.precio, 
    required this.descripcion, 
    required this.imagenProducto,
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
          minimumSize: const Size(170, 220),
          maximumSize: const Size(170, 220),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.zero,
        ), 
        child: SizedBox(
          width: 160,
          height: 200,
          child: Column(    
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeInImage(
                placeholder: const AssetImage('assets/no-image.png'), 
                image: NetworkImage(imagenProducto),
                height: 110,
                fit: BoxFit.cover,              
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$precio \$', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                      const SizedBox(height: 2),
                      Text(descripcion, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
                    ],
                  ),
                )          
            ],
          ),
        ),
      ),
    );
  }
}