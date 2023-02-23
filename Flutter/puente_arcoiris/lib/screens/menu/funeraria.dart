import 'package:flutter/material.dart';
import 'package:puente_arcoiris/services/firebase/firebase_service.dart';
import 'package:puente_arcoiris/widgets/widgets.dart';


class FunerariaScreen extends StatelessWidget {
   
  const FunerariaScreen({Key? key}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: getFuneraria(),
      builder: ((context, snapshot) {

        if(snapshot.hasData){
          
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: ((context, index) {

              return FunerariaBotonPersonalizado(
                titulo: snapshot.data?[index]['titulo'], 
                descripcion: snapshot.data?[index]['descripcion'], 
                image: snapshot.data?[index]['imagen'], 
                precio: snapshot.data![index]['precio'].toString()
              );
            })
          );
        }else{
          return const Center(child: CircularProgressIndicator());
        }

      }),
    );
  }
}



