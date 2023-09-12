import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lumbung_jamur/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 10), (() {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => LoginScreen()),
  //     );
  //   })
  //   );
  // }
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: Image(
                image: AssetImage('assets/img/shape.png'),
                width: 80,
                height: 80,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: animate ? 30.0 : -80,
              child: AnimatedOpacity(
                opacity: animate ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      './Hydroponic',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF285244),
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Monitoring your plant',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[400],
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 150 : 0,
              child: AnimatedOpacity(
                opacity: animate ? 1 : 0,
                duration: const Duration(milliseconds: 2000),
                child: Align(  
                  alignment: Alignment.bottomCenter,
                  child: Image(
                  image: AssetImage('assets/img/people.png'),
                  width: 400,
                  height: 400,
                ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              bottom: animate ? 60 : 0,
              right: 30.0,
              child: AnimatedOpacity(
                opacity: animate ? 1 : 0,
                duration: const Duration(milliseconds: 2000),
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFF78B2A4),
                  ),
                ),
              ),
            )
          ],
          //   alignment: Alignment.center,
          // children: [
          //   AnimatedPositioned(
          //     duration: Duration(milliseconds: 1600),
          //     top: 100,
          //     left: animate ? 30.0 : -80,
          //     child: AnimatedOpacity(
          //       duration: Duration(milliseconds: 1600),
          //       opacity: animate ? 1 : 0,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Hydroponic',
          //             style: TextStyle(
          //               fontSize: 24,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.black,
          //               fontFamily: 'Poppins',
          //             ),
          //           ),
          //           Text(
          //             'Monitoring your plant',
          //             style: TextStyle(
          //               fontSize: 16,
          //               fontFamily: 'Poppins',
          //               fontWeight: FontWeight.w300,
          //               color: Colors.black54,
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          //   AnimatedPositioned(
          //     duration: Duration(microseconds: 2400),
          //     bottom: 100,
          //     child: AnimatedOpacity(
          //       duration: Duration(milliseconds: 2000),
          //       opacity: animate ? 1 : 0,
          //      child: Image(
          //       image: AssetImage('assets/img/people.png'),
          //       width: 350,
          //       height: 350,
          //     ),
          //     )
          //   ),
          //   // Positioned(
          //   //   bottom: 50,
          //   //   child: Text (
          //   //     'Hydroponic',
          //   //     style: TextStyle(
          //   //       fontSize: 24,
          //   //       fontWeight: FontWeight.bold,
          //   //       color: Colors.black,
          //   //       fontFamily: 'Poppins',
          //   //     ),
          //   //   ),
          //   // ),
          // ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
