import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Facilities extends StatelessWidget {
  var icon1 = [
    Icon(Icons.food_bank, color: Colors.blue),
    Icon(Icons.storage, color: Colors.blue),
    Icon(Icons.room, color: Colors.blue),
    Icon(Icons.camera, color: Colors.blue),
    Icon(
      Icons.lock,
      color: Colors.blue,
    )
  ];
  var data1 = [
    "Food",
    "Luggage Storage",
    "Common Room",
    "CCTV Security",
    "Security Lockers",
  ];

  var icon2 = [
    Icon(Icons.wifi, color: Colors.blue),
    Icon(Icons.local_laundry_service_rounded, color: Colors.blue),
    Icon(Icons.cleaning_services, color: Colors.blue),
    Icon(Icons.car_crash_outlined, color: Colors.blue),
    Icon(
      Icons.shower_outlined,
      color: Colors.blue,
    ),
    Icon(
      Icons.sports_gymnastics_sharp,
      color: Colors.blue,
    )
  ];
  var data2 = [
    "Free wifi",
    "Washin Machine",
    "House Keeping",
    "Parking",
    "Hot Showers ",
    " GYM"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 90,
          title: Text(
            "Facilities",
            style: GoogleFonts.adamina(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF01579B),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "General Services",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 280,
                width: 450,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => ListTile(
                      leading: icon1[index],
                      title: Text(
                        data1[index],
                      )),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Other Services",
                  style: GoogleFonts.adamina(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                height: 280,
                width: 450,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => ListTile(
                      leading: icon2[index],
                      title: Text(
                        data2[index],
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
