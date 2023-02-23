import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final juegos = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1 '),
      ),
      body: ListView(
        children: [
          ...juegos.map(
            (game) => ListTile(
              title: Text(game),
              trailing:const Icon(Icons.arrow_forward_ios_outlined),
            )
            ).toList(),
          // ListTile(
          //   title: Text('Hola Mundo'),
          // )
        ],
      ),
    );
  }
}