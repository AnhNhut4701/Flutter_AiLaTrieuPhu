// ignore_for_file: prefer_final_fields, prefer_const_constructors


import 'package:flutter/material.dart';

import '../credit_screen.dart';
import '../games_screen.dart';
import '../home_screen.dart';
import '../profile/profile_screen.dart';
import '../ranks_screen.dart';

class MenuTabScreen extends StatefulWidget {
  const MenuTabScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return MenuTabScreenState();
  }
}

class MenuTabScreenState extends State<MenuTabScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    RanksScreen(),
    GamesScreen(),
    CreditScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang chủ',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Bảng xếp hạng',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.highlight),
              label: 'Chơi ngay',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Mua credit',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Hồ sơ',
              backgroundColor: Colors.black,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffA6ED4B),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
