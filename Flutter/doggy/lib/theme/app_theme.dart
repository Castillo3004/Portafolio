import 'package:flutter/material.dart';

 class AppTheme{

  static const Color primary = Color.fromRGBO(121, 85, 72, 1);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    primaryColor: primary,

    // InputDecoration Theme

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.all(Radius.circular(90))
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.all(Radius.circular(90))
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(90))
      )
    ),
      
    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(), 
        elevation: 0
      ) 
    ),



  );


 }