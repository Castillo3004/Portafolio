import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrreader/pages/home_page.dart';
import 'package:qrreader/pages/mapa_page.dart';
import 'package:qrreader/providers/scan_list_provider.dart';
import 'package:qrreader/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider(create: ( _ ) => UiProvider()),
        ChangeNotifierProvider(create: ( _ )=> ScanListProvider())
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR REader',
        initialRoute: 'home',
        routes: {
          'home': ( _ ) => HomePage(),
          'mapa': ( _ ) => MapaPage() 
        },
        theme: ThemeData(
          primarySwatch: Colors.deepPurple, // Simplifica estableciendo paleta de colores 
        ),
      ),
    );


  }
}