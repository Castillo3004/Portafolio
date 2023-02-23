import 'package:doggy/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
   
  const CustomMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return _CustomMenu(size: size);
  }
}

class _CustomMenu extends StatelessWidget {
  const _CustomMenu({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: size.width,
                height: 60,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(size.width, 80),
                      painter: BNBCustomePainter(), 
                    ),
                    Center(
                      heightFactor: 0.6,
                      child: FloatingActionButton(
                        backgroundColor: AppTheme.primary,
                        elevation: 0.5,
                        onPressed: (){},
                        child: const Icon(Icons.home, size: 35)
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: (){}, icon: const Image(image: AssetImage('assets/servicios.png'),)),
                          IconButton(onPressed: (){}, icon: const Image(image: AssetImage('assets/tienda.png'),)),
                          Container(width: size.width*.20,),
                          IconButton(onPressed: (){}, icon: const Image(image: AssetImage('assets/curso.png'),)),
                          IconButton(onPressed: (){}, icon: const Image(image: AssetImage('assets/perfil.png'),))
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          ],    
        ) ,
      ),
    );
  }
}

class BNBCustomePainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint()
    ..color = Colors.amberAccent
    ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0,0);
    path.quadraticBezierTo(size.width * .20, 0, size.width * .35, 0);
    path.quadraticBezierTo(size.width * .40, 0, size.width * .40, 10);
    path.arcToPoint(Offset(size.width * .60, 10), radius: const Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * .60, 0, size.width * .65, 0);
    path.quadraticBezierTo(size.width * .80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);

    canvas.drawPath(path, paint);

  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}