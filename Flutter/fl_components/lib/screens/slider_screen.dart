import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _checkEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
      
          Slider(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // divisions: 5,
            value: _sliderValue, 
            onChanged: _checkEnable ? (value){
              _sliderValue = value;
              setState(() {
                
              });
      
            }: null
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _checkEnable, 
            onChanged: (value) => setState(() { _checkEnable = value ?? true;})
          ),
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _checkEnable, 
            onChanged: (value) => setState(() { _checkEnable = value;})
            
          ),

          const AboutListTile(
            child: Text('Ver Licencias Material App'),
          ),
          
          // Checkbox(
          //   value: _checkEnable, 
          //   onChanged: (value){
          //     _checkEnable = value ?? true;
          //     setState(() {
                
          //     });
          //   }
          // ),

          // Switch(
          //   value: _checkEnable, 
          //   onChanged: (value) => setState(() { _checkEnable = value;})
          // ),

          Expanded( // Para expandir todo el ancho posible solo el Widget al que envuelve
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://play-lh.googleusercontent.com/6ONk-LEdv5Bm-jGwuLxKCq_QjUXAbMs12ewl4bgV3aVnHdRhBW9i3s1OxsnZtVPshuZj'),
                fit: BoxFit.contain,
                width: _sliderValue, 
              ),
            ),
          ),
        ]
      ),
    );
  }
}