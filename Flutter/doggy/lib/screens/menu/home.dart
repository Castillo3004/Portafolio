import 'package:doggy/providers/nav_provider.dart';
import 'package:doggy/screens/screens.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: _ItemsNavigation(),
      bottomNavigationBar: const Navegacion(),
    );
  }
}


class _ItemsNavigation extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){

    final navProvider = Provider.of<NavProvider>(context);
    
    final indexSeleccionado = navProvider.opcionSeleccionada;


    switch( indexSeleccionado){

      case 0: 
      return const SocialScreen();

      case 1: 
      return const ServiciosScreen();

      case 2: 
      return const MarketPetScreen();

      case 3: 
      return const EntrenamientoScreen();

      case 4: 
      return const PerfilScreen();

      default:
      return const SocialScreen(); 

    }

  }

}

