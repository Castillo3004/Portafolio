import 'package:doggy/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class TutorialScreen extends StatefulWidget {
   
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  
  final introKey = GlobalKey<IntroductionScreenState>();


  void initstate(){
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
  }

  Widget _buildImage(String assetName, [double width = 200]){
    return Image.asset('assets/$assetName', width: width,);
  }
  
  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle( fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Bienvenido a Doggy',
          body: 'Sabemos lo importante que es tu mascota para ti, te invitamos a compartir sus momentos más felices',
          image: _buildImage('imagen1.gif'),
          decoration: pageDecoration
        ),
        PageViewModel(
          title: 'MarketPet',
          body: 'Alimento, Juguetes, Collares y mucho más!!!',
          image: _buildImage('pet.gif'),
          decoration: pageDecoration
        ),
        PageViewModel(
          title: 'Servicios',
          body: 'Varios servicios dirigidos hacia el cuidado y educacion de tu mascota',
          image: _buildImage('imagen3.gif'),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(left: 15 ,right: 15),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.routeLogin );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(55), 
                backgroundColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
              ),
              child: const Text(
                'Iniciar', 
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          )
        )
      ],
      showSkipButton: false,
      showDoneButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,

      //botones
      showBackButton: true,
      back: const Text('Atras',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)
        ),
      next: const Text('Siguiente',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)
        ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      dotsDecorator: const DotsDecorator(
        size: Size(8, 8),
        color: Color(0xFFBDBDBD),
        activeSize: Size(15, 5),
        activeColor: Colors.black,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))
        )
      ),
    );
  }
}