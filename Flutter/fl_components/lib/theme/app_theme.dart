import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color Primario
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      centerTitle: true,
      elevation: 0
    ),

    // TextButton Theeme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    ),

    // FloatingActionButtons

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    //ElevatedButtons
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        shape: const StadiumBorder(), 
        elevation: 0
      ) 
    ),

    // InputDecoration Theme

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15))
      ),
      
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15))
      ),
      
      border: OutlineInputBorder(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15))
      ),

    )
  );

    static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color Primario
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      centerTitle: true,
      elevation: 0, 
    ),
    
  );

}