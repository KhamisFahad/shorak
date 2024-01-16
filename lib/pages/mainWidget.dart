// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shorak/pages/Consult.dart';
import 'package:shorak/pages/Settings.dart';
import 'package:shorak/pages/home.dart';
import 'package:shorak/pages/request.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _currentIndex = 0;
  List<Widget> listOptions = <Widget>[
    HomeWidget(),
    ConsultWidget(),
    RequestWidget(),
    SettingsWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            selectedIndex: _currentIndex,
            onTabChange: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            gap: 7,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 85, 85, 85),
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.people,
                text: "Consult",
              ),
              GButton(
                icon: Icons.file_copy,
                text: "Requests",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
          ),
        ),
      ),
      body: listOptions.elementAt(_currentIndex),
    );
  }
}
