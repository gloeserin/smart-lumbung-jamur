import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/global_color.dart';
import 'package:http/http.dart' as http;

Widget notificationButton({
  required BuildContext context,
  required Color backgroundColor,
  required IconData icon,
  required String mainText,
  required String subText,
}) {
  return Stack(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
              maxRadius: 20,
              backgroundColor: backgroundColor,
              child: Icon(
                icon,
                color: Colors.white,
                size: 18,
              ),
            ),
            SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: mainText,
                        style: const TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 14,
                          color: Color.fromARGB(255, 67, 49, 45),
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: subText,
                        style: TextStyle(
                          fontFamily: 'PoppinsSemiBold',
                          fontSize: 11,
                          color: Color.fromARGB(255, 67, 49, 45),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}