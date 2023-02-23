import 'package:doggy/providers/firebase/firebase_service.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EntrenamientoScreen extends StatelessWidget {
   
  const EntrenamientoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return FutureBuilder(
      future: getEntrenamiento(),
      builder: (context, snapshot){
        if(snapshot.hasData){

          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index){

              return CustomEntrenamientoButton(
                imageAsset: snapshot.data?[index]['portada'], 
                titleCard: snapshot.data?[index]['titulo'], 
                estado: snapshot.data?[index]['estado'],
                n_temas: snapshot.data![index]['n_temas'].toString(),
                n_semanas: snapshot.data![index]['n_semanas'].toString(),
                index: index
              );
            }
          );
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}