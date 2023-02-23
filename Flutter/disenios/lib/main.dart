import 'package:flutter/material.dart';

import 'package:disenios/screens/basic_design.dart';
import 'package:disenios/screens/home_screen.dart';
import 'package:disenios/screens/scroll_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle().copyWith(
      statusBarColor: Colors.transparent, // Para la barra de estado transparente
      statusBarIconBrightness: Brightness.light, // Para los iconos de la barra de estado
      systemNavigationBarColor: Colors.transparent, // Para la barra de navegacion transparente
      systemNavigationBarIconBrightness: Brightness.light, //Para los iconos de la barra de navegacion
      systemNavigationBarDividerColor: Colors.transparent // Para linea en barra de navegacion transparente
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      theme: ThemeData.dark(),
      routes: {
        'basic_design':(BuildContext context) => const BasicDesignScreen() ,
        'scroll_screen': (BuildContext context) => const ScrollScreen(),
        'home': (BuildContext context) => const HomeScreen()
      },
    );
  }
}