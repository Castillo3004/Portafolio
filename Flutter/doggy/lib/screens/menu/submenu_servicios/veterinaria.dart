import 'package:doggy/providers/firebase/firebase_service.dart';
import 'package:doggy/widgets/button_services_custom.dart';
import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class VeterinariaScreen extends StatelessWidget {
   
  const VeterinariaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarServices(titulo: 'Veterinaria',),
        elevation: 0,
        backgroundColor: const Color(0xffE2AF6E),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: FutureBuilder(
          future: getVeterinaria(),
          builder: (context, snapshot){
            if(snapshot.hasData){

              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context,index){

                  return ButtonServices(
                    titulo: snapshot.data?[index]['titulo'], 
                    imagenProducto: snapshot.data?[index]['imagen'], 
                    puntuacion: double.parse(snapshot.data![index]['puntuacion'].toString()), 
                    ubicacion: snapshot.data?[index]['ubicacion'], 
                    tipo: snapshot.data?[index]['tipo']
                  );
                }
              );
            }else{
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      )
    );
  }
}