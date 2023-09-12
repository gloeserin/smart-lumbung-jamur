import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
      body: Column(children: [
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(
              top: 28.0), // Sesuaikan dengan posisi top yang diinginkan
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF637E5B),
                ),
              ),
             
            ],
          ),
        ),
        Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/img/pp.png',
                    ))),
              ),
              Positioned(
                  right: 4,
                  bottom: 4,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 20,
                      color: Color(0xff476072),
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 8),
                      child: Column(
                        children: [
                          Positioned(
                              top: 16,
                              left: 16,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Username',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'Smarthome',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'Host',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'rmq2.pptik.id',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'Virtual Host',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      '/smarthome',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'Topic Publish',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'smartAgriculturePhone1',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'Topic Publish',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'SmartAgriculture',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      'Guid Device',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                    Text(
                                      '000000000000000000',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF476072),
                                      ),
                                    ),
                                  ])),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 40,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ]),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            child: GestureDetector(
              onTap: () {
                // Aksi ketika card ditekan
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HalamanBaru(),
                //   ),
                // );
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
              ),

            ),
          ),
        )
      ]),
    );
  }
}
