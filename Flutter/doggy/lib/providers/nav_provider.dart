import 'package:flutter/material.dart';

class NavProvider extends ChangeNotifier{

  int _opcionSeleccionada = 0;

  int get opcionSeleccionada{
    return _opcionSeleccionada;
  }

  set opcionSeleccionada(int i){
    _opcionSeleccionada = i;
    notifyListeners();
  }

}