import 'package:flutter/material.dart';

class CustomCardService extends StatelessWidget {

  final String imageAsset;
  final String titleCard;
  final Color colorCarta;
  final String ruta; 

  
  const CustomCardService({
    Key? key, required this.imageAsset, required this.titleCard, required this.colorCarta, required this.ruta
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.pushNamed(context, ruta);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: colorCarta,
        elevation: 0,
        maximumSize: const Size( 320, 100),
        animationDuration: Duration.zero,
        side: const BorderSide(width: 0, color: Colors.transparent),
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(

          children: [
            Image(image: AssetImage(imageAsset), height: 50),
            const SizedBox(width: 20),
            Text(titleCard,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),)
          ],
        ),
      )
    );
  }
}