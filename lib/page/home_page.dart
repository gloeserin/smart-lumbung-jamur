import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../utils/global_color.dart';
import '../widgets/normal_textform_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<List<double>> _waveHeightAnimation;

  final List<double> _waveHeight = [0.27, 0.3];
  bool testing = false;
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    );
    _waveHeightAnimation = DoubleListTween(
      begin: _waveHeight,
      end: [0.75, 0.8],
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleWaveHeight() {
    setState(() {
      if (!testing) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
      testing = !testing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    color: GlobalColors.darkbrown,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Hello, Raditya Arya Wiguna",
                                    // "${truncateText(userName, 32)}",
                                    style: const TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: formatDateTime(DateTime.now()),
                                    style: const TextStyle(
                                      fontFamily: 'PoppinsMedium',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 227, 226, 226),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            notificationButton(
                                context: context,
                                backgroundColor:
                                    Color.fromARGB(255, 164, 211, 113),
                                icon: FontAwesomeIcons.temperatureHalf,
                                mainText: "Suhu ruangan stabil !",
                                subText:
                                    "Penyiraman selesai, suhu kembali normal"),
                            // BUAT KONDISI KALO SUHUNYA LEBIH DRI 35
                            // notificationButton(
                            //   context: context,
                            //   backgroundColor:
                            //     Color.fromARGB(255, 113, 183, 211),
                            //   icon: FontAwesomeIcons.shower,
                            //   mainText: "Suhu ruangan lebih dari 30 °C!",
                            //   subText: "Penyiraman otomatis dilakukan"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Color.fromARGB(255, 254, 254, 254),
                        ),
                        width: double.infinity,
                        child: Padding(
  padding: const EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyusun widget ke pojok kiri
          children: [
            Container(
              width: 110,
              height: 200,
              child: ClipPath(
                clipper: HomePageClipper(),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 245, 245, 245),
                        Color.fromARGB(255, 153, 191, 225),
                      ],
                    ),
                  ),
                  child: AnimatedBuilder(
                    animation: _waveHeightAnimation,
                    builder: (context, child) {
                      return WaveWidget(
                        config: CustomConfig(
                          gradients: [
                            [Colors.red, Color.fromARGB(255, 194, 113, 113)],
                            [const Color.fromARGB(255, 223, 138, 138), const Color.fromARGB(255, 217, 75, 73)],
                          ],
                          durations: [5000, 4000],
                          heightPercentages: _waveHeightAnimation.value,
                          blur: const MaskFilter.blur(BlurStyle.solid, 5),
                          gradientBegin: Alignment.bottomLeft,
                          gradientEnd: Alignment.topRight,
                        ),
                        waveAmplitude: 4,
                        size: const Size(double.infinity, double.infinity),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 90,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Suhu ruangan saat ini,",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 1, 52, 93),
                              fontFamily: "PoppinsMedium",
                            ),
                          ),
                          Text(
                            "34 °C",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PoppinsBold',
                              color: Color.fromARGB(255, 1, 52, 93),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: GlobalColors.lightbrown,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 155, 155, 155).withOpacity(0.5), 
                          spreadRadius: 3, 
                          blurRadius: 5, 
                          offset: Offset(0, 3), 
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.droplet,
                            size: 35,
                            color: GlobalColors.wateringcolor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8),
                            child: Container(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Kelembapan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "80 %",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontFamily: 'PoppinsSemiBold',
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 30),
      Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Penyiraman Manual", style: TextStyle(fontSize: 13, fontFamily: 'PoppinsBold', color: GlobalColors.darkbrown),),
                        SizedBox(width: 16,),
                        Transform.scale(
                          scale: 1.5,
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                                if (isSwitched) {
                                   showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      title: Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.circleExclamation,
                                            color: GlobalColors.darkbrown,
                                            size: 20,
                                          ),
                                          SizedBox(width: 12),
                                          Text(
                                            'INFORMASI',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontFamily: 'PoppinsBold',
                                              color: GlobalColors.darkbrown,
                                            ),
                                          ),
                                        ],
                                      ),
                                      content: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Apakah anda yakin akan melakukan penyiraman tambahan ini?',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'PoppinsMedium',
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Padding(
                                          padding: const EdgeInsets.all(14),
                                          child: Container(
                                            width: double.maxFinite,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: IconsButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop(); 
                                                      setState(() {
                                                        isSwitched = false; 
                                                      });
                                                    },
                                                    text: 'Batal',
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: 16, vertical: 14),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16),
                                                      side: BorderSide(
                                                          width: 1,
                                                          color: Color.fromARGB(255, 113, 60, 13)), // Menambahkan warna abu pada border
                                                    ),
                                                    color: Colors.white,
                                                    textStyle: TextStyle(
                                                      color: GlobalColors.darkbrown,
                                                      fontFamily: 'PoppinsSemiBold',
                                                      fontSize: 12,
                                                    ),
                                                    iconColor: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 16),
                                                Expanded(
                                                  child: IconsButton(
                                                    onPressed: () {
                                                      
                                                    },
                                                    text: 'Ya',
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: 16, vertical: 14),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    color: GlobalColors.darkbrown,
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'PoppinsSemiBold',
                                                      fontSize: 12,
                                                    ),
                                                    iconColor: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                    },
                                  );
                                }
                              });
                            },
                            activeTrackColor: GlobalColors.wateringcolor,
                            activeColor: GlobalColors.lightbrown,
                          ),
                        )
                      ],
                    ),
                  )
    ],
  ),
)

                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String formatDateTime(DateTime dateTime) {
    final DateFormat formatter = DateFormat('EEEE, dd MMMM yyyy  |  HH:mm');
    return formatter.format(dateTime);
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Color(0xFFF1F4F8),
  //     body: SingleChildScrollView(
  //       child: SafeArea(
  //         child: Column(
  //           children: [
  //             Container(
  //               alignment: Alignment.topCenter,
  //               margin: EdgeInsets.only(
  //                   top: 28.0), // Sesuaikan dengan posisi top yang diinginkan
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Text(
  //                     'Hydroponic',
  //                     style: TextStyle(
  //                       fontSize: 28.0,
  //                       fontFamily: 'Poppins',
  //                       fontWeight: FontWeight.w800,
  //                       color: Color(0xFF637E5B),
  //                     ),
  //                   ),
  //                   Image(
  //                     image: AssetImage('assets/img/plant.png'),
  //                     width: 24.0,
  //                     height: 24.0,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Container(
  //               padding: const EdgeInsets.only(top: 40),
  //               width: MediaQuery.of(context).size.width,
  //               height: 380,
  //               child: ClipPath(
  //                 clipper: HomePageClipper(),
  //                 child: Container(
  //                   decoration: const BoxDecoration(
  //                     gradient: LinearGradient(
  //                       begin: Alignment.topCenter,
  //                       end: Alignment.bottomCenter,
  //                       colors: [
  //                         Color.fromARGB(255, 245, 245, 245),
  //                         Color.fromARGB(255, 153, 191, 225),
  //                       ],
  //                     ),
  //                   ),
  //                   child: AnimatedBuilder(
  //                     animation: _waveHeightAnimation,
  //                     builder: (context, child) {
  //                       return WaveWidget(
  //                         config: CustomConfig(
  //                           gradients: [
  //                             [Colors.red, Colors.red.shade200],
  //                             [Colors.red.shade200, Colors.red.shade400],
  //                           ],
  //                           durations: [
  //                             5000,
  //                             4,
  //                           ],
  //                           heightPercentages: _waveHeightAnimation.value,
  //                           blur: const MaskFilter.blur(BlurStyle.solid, 5),
  //                           gradientBegin: Alignment.bottomLeft,
  //                           gradientEnd: Alignment.topRight,
  //                         ),
  //                         waveAmplitude: 4,
  //                         size: const Size(double.infinity, double.infinity),
  //                       );
  //                     },
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             SizedBox(height: 20),
  //             Container(
  //               width: 350,
  //               height: 250,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(8),
  //                 boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey.withOpacity(0.3),
  //                     spreadRadius: 2,
  //                     blurRadius: 5,
  //                     offset: Offset(0, 3),
  //                   )
  //                 ],
  //               ),
  //               child: Card(
  //                 elevation: 0,
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(8),
  //                 ),
  //                 child: Container(
  //                   width: double.infinity,
  //                   height: double.infinity,
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Column(
  //                             children: [
  //                               Padding(padding: EdgeInsets.only(top: 10, left: 40),
  //                                 child: Column(
  //                                   children: [
  //                               Icon(
  //                                 Icons.settings,
  //                                 color: Colors.grey[850],
  //                                 size: 50,
  //                               ),
  //                               Text(
  //                                     'POMPA',
  //                                     style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 14,
  //                                       fontWeight: FontWeight.bold,
  //                                       color: Color(0xFF476072),
  //                                     ),
  //                                   ),
  //                               Text(
  //                                     'Off',
  //                                     style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 16,

  //                                       color: Color(0xFF476072),
  //                                     ),
  //                                   ),

  //                                   ],
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                           Column(
  //                             children: [
  //                               Padding(padding: EdgeInsets.only(top: 10, right: 40),
  //                                 child: Column(
  //                                   children: [
  //                               Icon(
  //                                 Icons.water_outlined,
  //                                 color: Colors.blue[800],
  //                                 size: 50,
  //                               ),
  //                               Text(
  //                                     'POMPA',
  //                                     style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 14,
  //                                       fontWeight: FontWeight.bold,
  //                                       color: Color(0xFF476072),
  //                                     ),
  //                                   ),
  //                               Text(
  //                                     'Off',
  //                                     style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 16,

  //                                       color: Color(0xFF476072),
  //                                     ),
  //                                   ),

  //                                   ],
  //                                 ),
  //                               ),
  //                             ],
  //                           ),

  //                         ],
  //                       ),
  //                       Center(
  //                         child: Column(
  //                           children: [
  //                              Text(
  //                                     'Value Sensor',
  //                                     style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 18,
  //                                       fontWeight: FontWeight.bold,
  //                                       color: Color(0xFF476072),
  //                                     ),
  //                                   ),
  //                              Text(
  //                                     '-',
  //                                     style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 16,

  //                                       color: Color(0xFF476072),
  //                                     ),
  //                                   ),

  //                           ],
  //                         ),
  //                       ),

  //                       Padding(
  //         padding: EdgeInsets.only(bottom: 16), // Atur jarak bottom sebesar 16 piksel
  //         child: ElevatedButton(
  //           onPressed: toggleWaveHeight,
  //           child: Text(
  //         testing ? 'Reset' : 'Test',
  //         style: TextStyle(
  //           fontFamily: 'Poppins',
  //           fontSize: 16,
  //           color: Colors.white,
  //         ),
  //           ),
  //           style: ElevatedButton.styleFrom(
  //         primary: Color(0xFF637E5B),
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(20),
  //         ),
  //           ),
  //         ),
  //             )
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class HomePageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double centerX = size.width / 2;
    final double baseY = size.height - 85;
    final double barWidth = 45;
    final double bodyHeight = size.height - 100;

    path.moveTo(centerX - barWidth / 2, size.height - 50);
    path.lineTo(centerX - barWidth / 2, baseY - bodyHeight);
    path.lineTo(centerX + barWidth / 2, baseY - bodyHeight);
    path.lineTo(centerX + barWidth / 2, size.height - 50);

    final double circleRadius = 35;
    final double circleCenterY = baseY + circleRadius;

    path.addOval(Rect.fromCircle(
        center: Offset(centerX, circleCenterY - (circleCenterY * 10 / 180)),
        radius: circleRadius));
    return path;
  }

  @override
  bool shouldReclip(HomePageClipper oldClipper) => false;
}

class DoubleListTween extends Tween<List<double>> {
  DoubleListTween({List<double>? begin, List<double>? end})
      : super(begin: begin, end: end);

  @override
  List<double> lerp(double t) {
    final beginList = begin!;
    final endList = end!;
    final resultList = <double>[];

    for (var i = 0; i < beginList.length; i++) {
      resultList.add(beginList[i] + (endList[i] - beginList[i]) * t);
    }

    return resultList;
  }
}
