import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbooking/project/view/booking.dart';
import 'new.dart';

void main() {
  runApp(MaterialApp(
    home: Container(),
  ));
}

class Container2 extends StatelessWidget {
  var rooms = [
    "asset/image/image4.jpg",
    "asset/image/image7.jpg",
    "asset/image/images 9.jpg",
    "asset/image/image5.jpg",
    "asset/image/images2.jpg",
    "asset/image/imges3.jpg",
  ];
  var names = [
    "Single Room\n  \$10000",
    "Two Sharing\n   \$8000",
    "Three Sharing\n   \$7000",
    "Four Sharing\n   \$6500",
    "Five Sharing\n   \$6000",
    "Six Sharing\n   \$5500",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 6,
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single_Room(
                                        image: rooms[index],
                                      )));
                        },
                        child: Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      child: Image.asset(rooms[index]),
                                    )),
                              ),
                              Text(
                                names[index],
                                style: GoogleFonts.adamina(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))),
    );
  }
}
