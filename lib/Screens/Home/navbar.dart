import 'package:flutter/material.dart';
import 'package:flutter_htl/Screens/Home/doc.dart';
import 'package:flutter_htl/constant.dart';
import 'package:flutter_htl/Screens/Home/homepage.dart';
import 'package:flutter_htl/Screens/Home/doctor.dart';
import 'package:flutter_htl/Screens/Home/doc.dart';
import 'package:flutter_htl/Screens/Home/profile.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SnappingList(),
    Doctor(),
    Profile(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar:
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),

          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  label: 'Doctor',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              selectedFontSize: 14,
              unselectedFontSize: 12,
              type: BottomNavigationBarType.fixed,
              backgroundColor: primaryColor,
              elevation: 0,
            ),
          ),
        ),
      ),
    );

  }
}
