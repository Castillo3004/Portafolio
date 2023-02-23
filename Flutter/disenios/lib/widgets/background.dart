import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {

    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.9],
          colors: [
            Color(0xff2E305F),
            Color(0Xff202333)
          ]
        )
      );

    return Stack(
      children: [

        // Purple Gradient
        Container( decoration: boxDecoration),

        //Pink Box 
        const Positioned(
          top: -100,
          left: -50,
          child: _PinkBox()
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {

  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 4,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color(0xffEA58B0),
              Color(0xffEF81A3)
            ]
          )
        ),
      ),
    );
  }
}