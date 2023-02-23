import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puente_arcoiris/models/providers/ui_provider.dart';
import 'package:puente_arcoiris/screens/screens.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';
import 'package:puente_arcoiris/widgets/appBar_personalizado.dart';
import 'package:puente_arcoiris/widgets/navegacion.dart';

class MenuNavigationScreen extends StatelessWidget {
   
  const MenuNavigationScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const AppBarPersonalizado(),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.primary,
        elevation: 0,
      ),
      body: _MenuNavigation(),

      bottomNavigationBar: const Navegacion(),
    );
  }
}

class _MenuNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;


    switch ( currentIndex ){

      case 0: 
      return const PerruqueriaScreen();

      case 1: 
      return const TiendaScreen();

      case 2: 
      return SaludScreen();

      case 3: 
      return const FunerariaScreen();

      default: 
      return const PerruqueriaScreen();

    }

  }
}


