import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostelbooking/project/special.dart';
import 'package:hostelbooking/project/view/special.dart';

import 'main_page.dart';
import 'more.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  var screens = [Main_page(), Special(), More_details()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.maps_home_work_sharp,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                ),
                label: ""),
          ]),
      body: screens[index],
    );
  }
}
