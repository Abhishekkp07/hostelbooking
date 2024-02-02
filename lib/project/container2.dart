import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbooking/project/booking.dart';

void main(){
  runApp(MaterialApp(home: Container(),));
}

class Container2 extends StatelessWidget {

   var rooms=["asset/image/image4.jpg","asset/image/image7.jpg","asset/image/images 9.jpg","asset/image/image5.jpg","asset/image/images2.jpg",
              "asset/image/imges3.jpg","asset/image/image8.jpg","asset/image/images6.jpg"];
   var names=["Single Room\n  \$10000","Two Sharing\n   \$8000","Three Sharing\n   \$7000","Four Sharing\n   \$6500","Five Sharing\n   \$6000","Six Sharing\n   \$5500","Seven Sharing\n   \$5000","Eight Sharing\n  \$4500",];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2, ),itemCount: 8,
            itemBuilder: (context,index)=>
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ClipRRect(borderRadius: BorderRadius.circular(20),
                   child: GestureDetector(onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()));
                   },
                     child: Container(
                       color: Colors.grey[100],
                       child: Column(
                         children: [Padding(
                           padding: const EdgeInsets.all(3),
                           child: ClipRRect(borderRadius: BorderRadius.circular(20),
                               child: Container(
                                 child: Image.asset(rooms[index]),)),
                         ),
                         Text(names[index] ,style: GoogleFonts.adamina(fontSize: 16),)],
                       ),
                     ),
                   ),
                 ),
               )
        )
      ),
    );
  }
}
