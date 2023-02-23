
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
   
  final String publicacion;
  final String perfil;
  final String nameUsuario; 
  final String descripcion;

  const CustomCardType2({
    Key? key, 
    required this.publicacion,
    required this.perfil, 
    required this.nameUsuario, 
    required this.descripcion
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Card(
        clipBehavior: Clip.antiAlias,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 10,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(
          children:[
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [ 
                      CircleAvatar(
                        maxRadius: 20,
                        backgroundImage: NetworkImage(perfil),
                      ),
                      const SizedBox(width: 15), 
                      Text(nameUsuario),
                    ]
                  ),
                ),
                IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.bookmark_add, size: 25, color: Colors.black),
                    splashRadius: 25,
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(descripcion, style: const TextStyle(fontSize: 13),),
                
                ),
              ],
            ),
            FadeInImage(
              image: NetworkImage(publicacion), 
              placeholder: const AssetImage('assets/imagen1.gif',),
              width: double.infinity,
              fit: BoxFit.cover,
              height: 320,
              fadeInDuration: const Duration(milliseconds: 100),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.favorite, size: 25, color: Colors.black),
                    splashRadius: 25,
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.comment, size: 25, color: Colors.black),
                    splashRadius: 25,
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.share, size: 25, color: Colors.black),
                    splashRadius: 25,
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}