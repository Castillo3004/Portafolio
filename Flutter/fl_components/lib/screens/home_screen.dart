
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        automaticallyImplyLeading: false, //Al crear las routas, sobre todo cundo redireccion a ruta desconocida, se ponia flecha, esta linea elimina eso.
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
          title: Text(menuOptions[i].name),
          onTap: () {

            // final route = MaterialPageRoute(builder: (context) => const ListView1Screen() );
            // Navigator.push(context, route);
            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: menuOptions.length
      )
    );
  }
}