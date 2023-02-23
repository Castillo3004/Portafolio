import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

class CartaTienda extends StatelessWidget {

  final String foto;
  final String nombre; 

  const CartaTienda({
    Key? key, required this.foto, required this.nombre,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey[100],
          foregroundColor: AppTheme.primary,
          padding: EdgeInsets.zero   
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 20),
            FadeInImage(
              placeholder: const AssetImage('assets/non-image.png'),
              image: NetworkImage(foto),
              height: 120, 
              fit: BoxFit.cover,
            ),
            Text(nombre, style: const TextStyle(fontFamily: 'Comic Neue', fontSize: 18, color: Colors.black))
          ],
        ),
        onPressed: (){},
      ),
    );
  }
}