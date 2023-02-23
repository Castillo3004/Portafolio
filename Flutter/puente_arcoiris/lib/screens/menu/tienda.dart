import 'package:flutter/material.dart';
import 'package:puente_arcoiris/services/firebase/firebase_service.dart';
import 'package:puente_arcoiris/widgets/widgets.dart';

class TiendaScreen extends StatelessWidget {
   
  const TiendaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(
      future: getTienda(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return GridView.builder(
            itemCount: snapshot.data?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ), 
            itemBuilder: (context, index){
              return CartaTienda(
                foto: snapshot.data?[index]['foto'],
                nombre: snapshot.data?[index]['nombre'],
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

