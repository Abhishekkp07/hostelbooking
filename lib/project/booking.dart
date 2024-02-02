import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Booking(),
    debugShowCheckedModeBanner: false,
  ));
}

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 100,centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("BOOKING",style: GoogleFonts.adamina(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Phone number",
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Student / Working",
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Address",
                prefixIcon: Icon(Icons.home),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "ID N0",
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){},
                shape: StadiumBorder(),
                height: 60,
                minWidth: 180,
                color: Colors.blue,
              child: Text("BOOK",style: GoogleFonts.adamina(fontSize: 15),),),
            )
          ],
        ),
      ),
    );
  }
}
