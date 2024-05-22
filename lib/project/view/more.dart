import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbooking/project/view/profile.dart';

import 'Rules.dart';
import 'facilities.dart';

void main() {
  runApp(MaterialApp(
    home: More_details(),
    debugShowCheckedModeBanner: false,
  ));
}

class More_details extends StatelessWidget {
  const More_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF01579B),
        toolbarHeight: 130,
        title: Text(
          "Other Details",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Facilities()));
                },
                child: Text("Facilities",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rules()));
                },
                child: Text("Rules",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Text("Profile",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            TextButton(
                onPressed: () {},
                child: Text("Settings",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            TextButton(
                onPressed: () {},
                child: Text("Details",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            TextButton(
                onPressed: () {},
                child: Text("Log Out",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            TextButton(
                onPressed: () {},
                child: Text("Cancellation",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
