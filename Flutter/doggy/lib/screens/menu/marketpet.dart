import 'package:doggy/providers/firebase/firebase_service.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MarketPetScreen extends StatelessWidget {
   
  const MarketPetScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return FutureBuilder(
      future: getMarket(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return GridView.builder(
            itemCount: snapshot.data?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ), 
            itemBuilder: (context, index){
              return ButtonMarket(
                precio: double.parse(snapshot.data![index]['precio'].toString()), 
                descripcion: snapshot.data?[index]['descripcion'], 
                imagenProducto: snapshot.data?[index]['imagen']
              );
            }
          );
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      }
    );
  }
}
