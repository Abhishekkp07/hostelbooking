import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Contanier1(),));
}

class Contanier1 extends StatelessWidget {

   var images=["asset/image/one1.jpg","asset/image/two.jpg","asset/image/three.jpg","asset/image/four.webp","asset/image/five.jpg","asset/image/six.jpg","asset/image/seven.jpeg",];
   var data=["FOOD","HOUSE KEEPING","LUGGAGE \n    STORAGE","FREE WiFi","CCTV SECURITY","LANUDRY\n  FACILITIES","GYM"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(itemCount: 7,scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
                    children: [
            ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Container(color:Colors.grey[100],
                width: 300,
                height: 200,
              child:  Image.asset(
                images[index],
                fit: BoxFit.fill
              ) ,)
            ),
                Padding(
                  padding: const EdgeInsets.only(top:120,right: 70,left: 50),
                  child: Text(data[index],style: TextStyle(fontSize: 25,color: Colors.white70,fontWeight: FontWeight.bold),),
                )    ],
                  ),
          )),
    );
  }
}
