import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puente_arcoiris/models/providers/ui_provider.dart';
import 'package:puente_arcoiris/routes/app-routes.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

// Importaciones de Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => UiProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Puente Arcoiris',
        theme: AppTheme.lighTheme,
        initialRoute: AppRoutes.rutaInicial,
        routes: AppRoutes.routes,
      ),
    );
  }
}
