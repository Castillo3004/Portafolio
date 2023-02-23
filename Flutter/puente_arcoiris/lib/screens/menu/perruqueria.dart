import 'package:flutter/material.dart';
import 'package:puente_arcoiris/services/firebase/firebase_service.dart';

import '../../widgets/widgets.dart';

class PerruqueriaScreen extends StatelessWidget {
   
  const PerruqueriaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: getPerruqueria(),
      builder: ((context, snapshot) {
        if(snapshot.hasData){
          
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: ((context, index) {

              return CartaBotonPersonalizado(
                titulo: snapshot.data?[index]['titulo'], 
                kgTipo: snapshot.data?[index]['kgTipo'], 
                descripcion: snapshot.data?[index]['descripcion'], 
                image: snapshot.data?[index]['image'], 
                precio: snapshot.data![index]['precio'].toString()
              ); 
            }),
          );
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}




