import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final juegos = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile( 
          title: Text(juegos[i]), 
          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.indigo,),
          onTap: (){
            final game = juegos[i];
            print(game);
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: juegos.length
      )
    );
  }
}