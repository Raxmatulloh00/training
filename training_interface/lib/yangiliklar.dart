import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/data.dart';
import 'package:training/page-1/abouts.dart';
import 'package:training/page_2/yangilik.dart';
// import 'package:training/page-1/news.dart's.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _currentIndex == 0
            ? Abouts()
            : (_currentIndex == 1
                ? Yangiliklar()
                : (_currentIndex == 2
                    ? const CircleAvatar(
                        backgroundColor: Colors.red,
                      )
                    : const CircleAvatar(
                        backgroundColor: Colors.pink,
                      ))),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.indigo[600],
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 28),
              label: "Home",
              backgroundColor: Colors.lightGreenAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded, size: 28),
              label: "Explore",
              backgroundColor: Colors.lightBlueAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 28),
              label: "Info",
              backgroundColor: Colors.lightBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 28),
              label: "Info",
              backgroundColor: Colors.redAccent,
            ),
          ],
          onTap: (value) {
            setState(
              () {
                _currentIndex = value;
              },
            );
          },
        ),
      ),
    );
  }
}
