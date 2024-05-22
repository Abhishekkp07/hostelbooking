import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Rules(),
  ));
}

class Rules extends StatelessWidget {
  const Rules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          "House Rules",
          style: GoogleFonts.adamina(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF01579B),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Cancellation Policy",
              style: GoogleFonts.adamina(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Free cancellation rates",
              style: GoogleFonts.adamina(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Your booking can be cancelled for free, if you cancel your booking 24 hours before arrival your deposit will be refunded to your payment card. if you cancel with in 24 hours,your deposit will not be refunded and the total of the first night's accommodation will be charged to your payment card",
              style: GoogleFonts.adamina(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Non-refundable rates",
              style: GoogleFonts.adamina(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Your booking is non-refundable,if you choose to cancel your booking,or in the case of a no show,you will still be charged the full cost of your booking",
              style: GoogleFonts.adamina(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Deposit only rates",
              style: GoogleFonts.adamina(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "This property has a one month cancellation policy. Failure to cancel within this time will result in cancellation charge equal to the first month of your stay, unless otherwise stated",
              style: GoogleFonts.adamina(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
