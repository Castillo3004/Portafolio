import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
            Color(0xff7AECCB),
            Color(0xff50C1DC)
            ],
          ),
        );
 
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2()
          ]
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        // Background Image
        Background(),

        MainContent()

      ],
    );
  }
}


class Background extends StatelessWidget {

  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50C1DC), // Agregar ff despues de 0x 
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'),)
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          const Text('11°', style: textStyle,),
          const Text('Miércoles', style: textStyle,),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 80, color: Colors.white),
        ],
      ),
    );
  }
}


class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50C1DC),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff2E97F8), // la otra opcion para colores hexadecimales es agregar inico 0xff
            shape: const StadiumBorder(),
            elevation: 8
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35,vertical: 5),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}