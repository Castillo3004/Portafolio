import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puente_arcoiris/routes/app-routes.dart';

import '../models/providers/ui_provider.dart';

class AppBarPersonalizado extends StatelessWidget {


  const AppBarPersonalizado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String titulo = '';

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    if (currentIndex == 0){
      titulo = 'Perruqueria';
    }else if (currentIndex == 1){
      titulo = 'Tienda';
    }else if (currentIndex == 2){
      titulo = 'Salud';
    }else if (currentIndex == 3){
      titulo = 'Funeraria';
    }
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Image.asset('assets/avatar.png', height: 40),onPressed: (){ Navigator.pushNamed(context, AppRoutes.perfil);},padding: EdgeInsets.zero),
        Text(titulo, style: const TextStyle(color: Colors.black, fontFamily: 'Comic Neue'),),
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.search_outlined, color: Colors.black,)
        )
      ],
    );
  }
}