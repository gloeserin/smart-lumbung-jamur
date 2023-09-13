import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lumbung_jamur/screen/login_screen.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), (() {
      Navigator.pushAndRemoveUntil(
              context,
              PageAnimationTransition(
                  page: LoginScreen(),
                  pageAnimationType: FadeAnimationTransition()),
              (route) => false,
            );
    }));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/mushroomlogo.png",
            width: 200,
          ),
        ],
      )),
    );
  }
  
}
