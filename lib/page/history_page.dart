import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lumbung_jamur/utils/global_color.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  void showPopupDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0))),
              content: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 400,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Column(children: const [
                                Text(
                                  'Mushroom Home',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF665A48),
                                    ),
                                ),
                               
                              ]),
                            ),
                            
                            const SizedBox(height: 10),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Suhu Maks',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                           color: Color(0xFF665A48),
                                          ),
                                        ),
                                        Text(
                                          '35 C',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA4907C),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Suhu Min',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF665A48),
                                          ),
                                        ),
                                        Text(
                                          '25 C',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA4907C),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Container(
                                  width: 350,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Penyiraman 1x',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                           color: Color(0xFF665A48),
                                          ),
                                        ),
                                        Text(
                                          'di waktu 12.00-12.05',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFA4907C),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                            const SizedBox(height: 10),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Container(
                                width: 350,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Penyiraman 2x',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF665A48),
                                        ),
                                      ),
                                      Text(
                                        'di waktu 15.00-15.05',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFA4907C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Tap ',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFA4907C)),
                            ),
                            Text(
                              'anywhere ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'to close',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFA4907C)),
                            )
                          ],
                        )
                      ]),
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF40362C),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Latest History',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'PoppinsBold',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'See the Latest Activity',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                          SizedBox(
                              height: 30,
                            ),
                      Container(
                        width: MediaQuery.of(context).size.width *
                            0.9, // Sesuaikan dengan lebar yang diinginkan
                        // padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.only(left:20,right:20),
                          children: [
                        
                            
                            SizedBox(
                              height: 18,
                            ),
                           Container(
                              width: MediaQuery.of(context).size.width *
                                  0.9, // Sesuaikan dengan lebar yang diinginkan
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), // Warna bayangan
                                    spreadRadius: 5, // Menyebarkan bayangan
                                    blurRadius: 7, // Tingkat keburaman bayangan
                                    offset: Offset(0, 3), // Posisi bayangan
                                  ),
                                ],
                              ),

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      color: Color.fromARGB(255, 200, 189, 189),
                                      child: Icon(Icons.water_drop, color: GlobalColors.darkbrown,),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'SENIN',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '12/10/2021',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showPopupDialog(
                                          context); // Fungsi yang ingin Anda panggil saat ikon diklik
                                    },
                                    child: Icon(Icons.more_horiz),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.9, // Sesuaikan dengan lebar yang diinginkan
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), // Warna bayangan
                                    spreadRadius: 5, // Menyebarkan bayangan
                                    blurRadius: 7, // Tingkat keburaman bayangan
                                    offset: Offset(0, 3), // Posisi bayangan
                                  ),
                                ],
                              ),

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      color: Color.fromARGB(255, 200, 189, 189),
                                      child: Icon(Icons.water_drop, color: GlobalColors.darkbrown,),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'SENIN',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '12/10/2021',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showPopupDialog(
                                          context); // Fungsi yang ingin Anda panggil saat ikon diklik
                                    },
                                    child: Icon(Icons.more_horiz),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                           Container(
                              width: MediaQuery.of(context).size.width *
                                  0.9, // Sesuaikan dengan lebar yang diinginkan
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), // Warna bayangan
                                    spreadRadius: 5, // Menyebarkan bayangan
                                    blurRadius: 7, // Tingkat keburaman bayangan
                                    offset: Offset(0, 3), // Posisi bayangan
                                  ),
                                ],
                              ),

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      color: Color.fromARGB(255, 200, 189, 189),
                                      child: Icon(Icons.water_drop, color: GlobalColors.darkbrown,),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'SENIN',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '12/10/2021',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showPopupDialog(
                                          context); // Fungsi yang ingin Anda panggil saat ikon diklik
                                    },
                                    child: Icon(Icons.more_horiz),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.9, // Sesuaikan dengan lebar yang diinginkan
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), // Warna bayangan
                                    spreadRadius: 5, // Menyebarkan bayangan
                                    blurRadius: 7, // Tingkat keburaman bayangan
                                    offset: Offset(0, 3), // Posisi bayangan
                                  ),
                                ],
                              ),

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      color: Color.fromARGB(255, 200, 189, 189),
                                      child: Icon(Icons.water_drop, color: GlobalColors.darkbrown,),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'SENIN',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '12/10/2021',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showPopupDialog(
                                          context); // Fungsi yang ingin Anda panggil saat ikon diklik
                                    },
                                    child: Icon(Icons.more_horiz),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Container(
      //     padding: EdgeInsets.only(top: 25.0),
      //     child: Column(
      //       children: [
      //         const Text(
      //           'History',
      //           style: TextStyle(
      //             fontSize: 25,
      //             fontFamily: 'Poppins',
      //             color: Color(0xFF476072),
      //           ),
      //         ),
      //         Container(
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      //           child: Card(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(16.0),
      //             ),
      //             color: Colors.white,
      //             clipBehavior: Clip.antiAliasWithSaveLayer,
      //             elevation: 3,
      //             child: IntrinsicHeight(
      //               child: InkWell(
      //                 child: Row(
      //                   crossAxisAlignment: CrossAxisAlignment.stretch,
      //                   children: [
      //                     Expanded(
      //                         flex: 2,
      //                         child: Padding(
      //                           padding: EdgeInsets.all(8),
      //                           child: Container(
      //                             height: 50,
      //                             width: 50,
      //                             decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.circular(16),
      //                               color: Color(0xFFA4907C),
      //                             ),
      //                             child: ClipRRect(
      //                               borderRadius: BorderRadius.circular(10),
      //                               child: Image.asset(
      //                                 "assets/img/watering.PNG",
      //                                 width: 50,
      //                                 height: 50,
      //                               ),
      //                             ),
      //                           ),
      //                         )),
      //                     Expanded(
      //                       flex: 4,
      //                       child: Padding(
      //                         padding: const EdgeInsets.all(8.0),
      //                         child: Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           mainAxisAlignment:
      //                               MainAxisAlignment.spaceEvenly,
      //                           children: [
      //                             Text(
      //                               'Senin',
      //                               style: TextStyle(
      //                                 fontSize: 18,
      //                                 fontFamily: 'Poppins',
      //                                 color: Color.fromARGB(255, 22, 21, 19),
      //                               ),
      //                             ),
      //                             Text(
      //                               '12/10/2021',
      //                               style: TextStyle(
      //                                 fontSize: 14,
      //                                 fontFamily: 'Poppins',
      //                                 color: Color.fromARGB(255, 22, 21, 19),
      //                               ),
      //                             ),
      //                             SizedBox(height: 20),
      //                             Align(
      //                               alignment: Alignment
      //                                   .centerRight, // Mengatur posisi RichText ke kanan
      //                               child: RichText(
      //                                 text: TextSpan(
      //                                   text: 'Tap for more',
      //                                   style: TextStyle(
      //                                       fontSize: 14.0,
      //                                       color: Color(0xFF3F2305),
      //                                       fontFamily: 'Poppins'),
      //                                   children: <TextSpan>[
      //                                     TextSpan(
      //                                       text: ' info',
      //                                       style: TextStyle(
      //                                           fontSize: 14.0,
      //                                           color: Color(0xFFA4907C),
      //                                           fontFamily: 'Poppins'),
      //                                       recognizer: TapGestureRecognizer()
      //                                         ..onTap = () {
      //                                           showPopupDialog(context);
      //                                         },
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      // Container(
      //   padding:
      //       const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      //   child: Card(
      //     color: Color(0xFF334257),
      //     clipBehavior: Clip.antiAliasWithSaveLayer,
      //     elevation: 3,
      //     child: IntrinsicHeight(
      //       child: InkWell(
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: [
      //             Expanded(
      //               flex: 2,
      //               child: Padding(
      //                   padding: EdgeInsets.all(8),
      //                   child: Container(
      //                     height: 50,
      //                     width: 50,
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(10),
      //                       child: Image.asset(
      //                         "assets/images/dispenser.png",
      //                         width: 50,
      //                         height: 50,
      //                       ),
      //                     ),
      //                   )),
      //             ),
      //             Expanded(
      //               flex: 4,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   mainAxisAlignment:
      //                       MainAxisAlignment.spaceEvenly,
      //                   children: [
      //                     Text(
      //                       'Device',
      //                       style: TextStyle(
      //                           fontSize: 18,
      //                           fontFamily: 'Poppins',
      //                           color: Colors.white),
      //                     ),
      //                     Text(
      //                       'b75354df-7ca2-4bf6-9f98-9984109a1db2',
      //                       style: TextStyle(
      //                           fontSize: 14,
      //                           fontFamily: 'Poppins',
      //                           color: Colors.white),
      //                     ),
      //                     SizedBox(height: 20),
      //                     Align(
      //                       alignment: Alignment
      //                           .centerRight, // Mengatur posisi RichText ke kanan
      //                       child: RichText(
      //                         text: TextSpan(
      //                           text: 'Tap for more',
      //                           style: TextStyle(
      //                               fontSize: 14.0,
      //                               color: Colors.white,
      //                               fontFamily: 'Poppins'),
      //                           children: <TextSpan>[
      //                             TextSpan(
      //                               text: ' info',
      //                               style: TextStyle(
      //                                   fontSize: 14.0,
      //                                   color: Color(0xFFA4907C),
      //                                   fontFamily: 'Poppins'),
      //                               recognizer: TapGestureRecognizer()
      //                                 ..onTap = () {
      //                                   showPopupDialog(context);
      //                                 },
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Container(
      //   padding:
      //       const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      //   child: Card(
      //     color: Color(0xFF334257),
      //     clipBehavior: Clip.antiAliasWithSaveLayer,
      //     elevation: 3,
      //     child: IntrinsicHeight(
      //       child: InkWell(
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: [
      //             Expanded(
      //               flex: 2,
      //               child: Padding(
      //                   padding: EdgeInsets.all(8),
      //                   child: Container(
      //                     height: 50,
      //                     width: 50,
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(10),
      //                       child: Image.asset(
      //                         "assets/images/dispenser.png",
      //                         width: 50,
      //                         height: 50,
      //                       ),
      //                     ),
      //                   )),
      //             ),
      //             Expanded(
      //               flex: 4,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   mainAxisAlignment:
      //                       MainAxisAlignment.spaceEvenly,
      //                   children: [
      //                     Text(
      //                       'Device',
      //                       style: TextStyle(
      //                         fontSize: 18,
      //                         fontFamily: 'Poppins',
      //                         color: Color(0xFFA4907C),
      //                       ),
      //                     ),
      //                     Text(
      //                       'b75354df-7ca2-4bf6-9f98-9984109a1db2',
      //                       style: TextStyle(
      //                         fontSize: 14,
      //                         fontFamily: 'Poppins',
      //                         color: Color(0xFFA4907C),
      //                       ),
      //                     ),
      //                     SizedBox(height: 20),
      //                     Align(
      //                       alignment: Alignment
      //                           .centerRight, // Mengatur posisi RichText ke kanan
      //                       child: RichText(
      //                         text: TextSpan(
      //                           text: 'Tap for more',
      //                           style: TextStyle(
      //                               fontSize: 14.0,
      //                               color: Colors.white,
      //                               fontFamily: 'Poppins'),
      //                           children: <TextSpan>[
      //                             TextSpan(
      //                               text: ' info',
      //                               style: TextStyle(
      //                                   fontSize: 14.0,
      //                                   color: Color(0xFFA4907C),
      //                                   fontFamily: 'Poppins'),
      //                               recognizer: TapGestureRecognizer()
      //                                 ..onTap = () {
      //                                   showPopupDialog(context);
      //                                 },
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
