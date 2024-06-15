import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'booking.dart';


class Single_Room extends StatelessWidget {
  String? image;

  Single_Room({this.image});

  @override
  var Icons = [
    "asset/image/wifi.png",
    "asset/image/car.png",
    "asset/image/tea.png",
    "asset/image/washig machine.png"
  ];
  var data = [
    "WiFi",
    "Parking",
    "Food",
    "laundry",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Container(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  "$image",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    4,
                    (index) => Padding(
                          padding: const EdgeInsets.only(
                              left: 11, top: 25, right: 11, bottom: 20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Colors.grey[100],
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        Icons[index],
                                        height: 35,
                                        width: 35,
                                      ),
                                      SizedBox(),
                                      Text(data[index])
                                    ],
                                  ),
                                ),
                              )),
                        )),
              ),
            ),
            Text(
              'About',
              style: GoogleFonts.adamina(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "If you are looking for a fun, friendly, and affordable place to stay in (CN), look no further than (HN), the best hostel in town. At (HN), you will enjoy a comfortable bed, a fully-equipped kitchen, a rooftop terrace, and a social atmosphere that will make you feel at home. You will also have the chance to meet other travelers from around the world, join our daily events and parties, and explore the city with our local tips and recommendations. Book your stay at (HN) today and get ready for an unforgettable adventure in(CN)",
                style: GoogleFonts.adamina(fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Booking()));
                  },
                  child: Text("BOOKING")),
            )
          ],
        ),
      ),
    );
  }
}
