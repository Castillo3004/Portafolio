import 'package:doggy/providers/firebase/firebase_service.dart';
import 'package:doggy/theme/app_theme.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';


class SocialScreen extends StatelessWidget {
   
  const SocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Center(
      child: RefreshIndicator(
        color: AppTheme.primary,
        onRefresh: (){
          return Future.delayed(const Duration(seconds: 2)); // Esto es para refresh indicator
        },
        child: FutureBuilder(
          future: getSocial(),
          builder: (context, snapshot){
            if (snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data?.length,
                physics: const BouncingScrollPhysics(), // Efecto igual a IOS 
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (context, index) {
                  return CustomCardType2(
                    nameUsuario: snapshot.data?[index]['usuario'],
                    perfil: snapshot.data?[index]['perfil'],
                    publicacion: snapshot.data?[index]['publicacion'],
                    descripcion: snapshot.data?[index]['descripcion'], 
                  );
                },  
              );
            }else{
              return const Center( child: CircularProgressIndicator());
            }
          }
        ),
      ),
    );    
  }
}

