import 'package:doggy/providers/nav_provider.dart';
import 'package:doggy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Navegacion extends StatelessWidget {
   
  const Navegacion({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final navProvider = Provider.of<NavProvider>(context);

    final indexActual = navProvider.opcionSeleccionada;

    return BottomNavigationBar(
      onTap: (int i) => navProvider.opcionSeleccionada = i,
      currentIndex: indexActual,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      backgroundColor: Colors.orangeAccent.shade100,
      type:BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: AppTheme.primary,

      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/servicios.png')),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/tienda.png')),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/curso.png')),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/perfil.png')),
          label: 'Peluqueria'
        ),
        
      ]
    );
  }
}