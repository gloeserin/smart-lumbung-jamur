import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lumbung_jamur/page/history_page.dart';
import 'package:lumbung_jamur/page/home_page.dart';
import 'package:lumbung_jamur/page/profile_page.dart';

import '../utils/global_color.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedMenu = 0;
  List<Widget> listPage = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar( 
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        color: GlobalColors.lightbrown,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){ 
           setState(() {
            _selectedMenu = index;
          });
        },
        
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
      body: listPage[_selectedMenu],
    );
  }
}