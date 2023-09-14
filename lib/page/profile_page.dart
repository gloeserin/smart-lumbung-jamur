import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lumbung_jamur/screen/login_screen.dart';
import 'package:lumbung_jamur/screen/login_screen.dart';
import 'package:lumbung_jamur/screen/menu_screen.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import '../utils/global_color.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FractionalTranslation(
                translation: Offset(0.0, -0.1), // Ubah nilai Offset sesuai dengan posisi yang Anda inginkan (lebih atas)
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/img/logout2.png",
                          width: 300,
                          height: 300,
                        ),
                        Text(
                          'Mushroom Smart Home',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'PoppinsMedium',
                            color: GlobalColors.darkbrown,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Terima kasih telah memakai aplikasi kami!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),

                ElevatedButton(
                  onPressed: () {
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
                                FontAwesomeIcons.rightFromBracket,
                                color: GlobalColors.darkbrown,
                                size: 20,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'LOGOUT',
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
                                'Apakah anda yakin akan logout?',
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          primary: Colors.white,
                                          onPrimary: GlobalColors.darkbrown,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 113, 60, 13),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Batal',
                                          style: TextStyle(
                                            color: GlobalColors.darkbrown,
                                            fontFamily: 'PoppinsSemiBold',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            PageAnimationTransition(
                                              page: LoginScreen(),
                                              pageAnimationType:
                                                  FadeAnimationTransition(),
                                            ),
                                            (route) => false,
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              GlobalColors.darkbrown,
                                          primary: GlobalColors.darkbrown,
                                          onPrimary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                        child: Text(
                                          'Ya',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'PoppinsSemiBold',
                                            fontSize: 12,
                                          ),
                                        ),
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
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.darkbrown,
                    foregroundColor: Colors.white, // text color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 115,
                      vertical: 15,
                    ), // button padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(14), // button border radius
                    ),
                  ),
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'PoppinsSemiBold',
                      color: Colors.white,
                    ),
                  ),
                )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
