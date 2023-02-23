
import 'package:flutter/material.dart';
import 'package:puente_arcoiris/screens/menu/funeraria_datos.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

class FunerariaBotonPersonalizado extends StatelessWidget {
  
  final String titulo;
  final String descripcion; 
  final String image; 
  final String precio; 
  
  const FunerariaBotonPersonalizado({
    
    Key? key, required this.titulo, required this.descripcion, required this.image, required this.precio,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width *0.85,
      height: size.height * 0.23,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey[100],
            foregroundColor: AppTheme.primary,     
          ),
          child: Row(
            children: [
              FadeInImage(
                placeholder: const AssetImage('assets/non-image.png'),
                height: size.height*0.15,
                image: NetworkImage(image), 
                fit: BoxFit.cover
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: SizedBox(
                  width: size.width *0.52,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(titulo, style: const TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 18, color: Colors.black)),
                      Text(descripcion, textAlign: TextAlign.left, maxLines: 4, overflow: TextOverflow.ellipsis, style: const TextStyle(fontFamily: 'Comic Neue', fontSize: 17, color: Colors.black)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('\$ $precio',style: const TextStyle(fontFamily: 'Comic Neue Bold', color: Colors.black))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          onPressed: (){
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FunerariaDatosScreen(titulo: titulo)));
          },
        ),
      ),
    );
  }
}