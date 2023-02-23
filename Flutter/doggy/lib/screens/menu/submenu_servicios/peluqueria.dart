import 'package:doggy/providers/firebase/firebase_service.dart';
import 'package:doggy/widgets/button_services_custom.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PeluqueriaScreen extends StatelessWidget {
   
  const PeluqueriaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarServices(titulo: 'Peluqueria'),
        elevation: 0,
        backgroundColor: const Color(0xffE2AF6E),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: FutureBuilder(
          future: getPeluqueria(),
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