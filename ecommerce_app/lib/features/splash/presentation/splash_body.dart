import 'dart:async';

import 'package:ecommerce_app/features/onboarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnBoardingView(),
        ),
      );
    });
    return Stack(
      children: <Widget>[
        Container(
          foregroundDecoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splashScreen.jpg"),
                  fit: BoxFit.fill)),
        ),
        Center(
          child: Text(
            'OXY BOOTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
