import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbooking/project/container2.dart';
import 'package:hostelbooking/project/stackexm.dart';

void main() {
  runApp(MaterialApp(
    home: Main_page(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main_page extends StatelessWidget {
  const Main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
        appBar: AppBar(
          toolbarHeight: 120,
          title: Column(
            children: [
              Text(
                "My Spot ",
                style: GoogleFonts.adamina(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
             // Text("Stay at Home In Your Dream Place",style: GoogleFonts.adamina(fontSize: 25,color: Colors.white),),
            ],
          ),

          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
            centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: Text(
                  "Services ",
                  style: GoogleFonts.adamina(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Contanier1(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  "Rooms",
                  style: GoogleFonts.adamina(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container2()
            ],
          ),
        ));
  }
}
