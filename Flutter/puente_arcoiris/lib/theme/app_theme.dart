import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Color.fromRGBO(241, 197, 107, 6);


  static final ThemeData lighTheme = ThemeData.light().copyWith(


  // Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primary,
      shape: const StadiumBorder(),
      elevation: 0,
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 70),

    ),
  ),

  // InputDecoration Theme

  inputDecorationTheme: const  InputDecorationTheme(

    floatingLabelStyle: TextStyle(color: Colors.black87, fontFamily: 'Comic Neue'),
    hintStyle: TextStyle(fontFamily: 'Comic Neue'),
    labelStyle: TextStyle(fontFamily: 'Comic Neue'),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black87,  ),
      
    ),

    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black87, )
    ),

  )




  );




}