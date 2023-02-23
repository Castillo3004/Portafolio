import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {

  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextEditingController? controlador; 

  const InputPersonalizado({
    Key? key, this.keyboardType, this.obscureText = false, this.hintText, this.labelText, this.helperText,this.controlador,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      autofocus: false,
      keyboardType: keyboardType,
      obscureText: obscureText  ,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText  
      ),
    );
  }
}