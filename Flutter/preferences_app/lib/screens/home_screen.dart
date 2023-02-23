import 'package:flutter/material.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routename = 'home';
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Darkmode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Genero: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
          const Divider()
        ],
      )
    );
  }
}