
import 'package:doggy/screens/screens.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
   
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
    void initState(){
      super.initState();
      _navigatetoHome();
    }
    
    _navigatetoHome() async{
      await Future.delayed( const Duration(milliseconds: 1900), (){});
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const TutorialScreen()));
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.orangeAccent.shade100,
        body: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/puente-arcoiris.png'),
              )
            ],
          ),
        ),
      );
    }



}
