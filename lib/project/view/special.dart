import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'booking.dart';

class Special extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01579B),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "AC Rooms",
                  style: GoogleFonts.adamina(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 230,
                      width: double.infinity,
                      child: Image.asset(
                        "asset/image/ac.png",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("For one day Room",
                    style: GoogleFonts.adamina(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 230,
                      width: double.infinity,
                      child: Image.asset(
                        "asset/image/image8.jpg",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Dormitory",
                    style: GoogleFonts.adamina(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 230,
                      width: double.infinity,
                      child: Image.asset(
                        "asset/image/images6.jpg",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
