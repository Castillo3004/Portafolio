import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

import '../models/providers/ui_provider.dart';


class Navegacion extends StatelessWidget {

  const Navegacion({
    Key? key
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;


    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex ,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      
      backgroundColor: Colors.grey,
      unselectedItemColor: Colors.black,
      selectedItemColor: AppTheme.primary,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.brush),
          label: 'Perruqeria',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory_rounded),
          label: 'Tienda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.health_and_safety),
          label: 'Salud'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: 'Funeraria'
        )
      ],
      
    ); 
  }
}
