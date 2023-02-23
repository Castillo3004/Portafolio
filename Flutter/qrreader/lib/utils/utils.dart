

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/scan_model.dart';

launchURL(BuildContext context, ScanModel scan ) async{

  final url = scan.valor;

  if(scan.tipo == 'http'){
    // Abrir el sitio web

    if(await canLaunch(url)){
      await launch(url);

    }else {
      throw 'Could not launch $url';
    }
  }else{

    Navigator.pushNamed(context, 'mapa', arguments: scan);

  }

}

/* Esto se agrega en Android 11 o superior 
 
 debido a las restrcciones por defecto para la app de saber que otras aplicaciones tenemos instaladas,
 lo que se llama visibilidad del paquete. Se soluciona con el codigo de abajo con lo cual se hace es acceder
 a otras aplicaciones, en concreto, algun navegador, para hacer uso de sus servicios

 Esto se coloca al final de android/app/src/main/ hay un archivo AndroidManifest.xml, dentro de las etiquetas <manifest>

*/

  //   <queries>
  //   <intent>
  //     <action android:name="android.intent.action.VIEW"></action>
  //     <category android:name="android.intent.category.BROWSABLE"></category>
  //     <data android:scheme="https"></data>
  //   </intent>
  // </queries>