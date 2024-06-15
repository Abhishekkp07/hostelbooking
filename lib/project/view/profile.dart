import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Profile extends StatelessWidget {

  var profile=["phone number","address","ID NO","Settings","Log Out"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF01579B),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Icon(CupertinoIcons.person_alt_circle_fill,size: 200,),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text("Name",style: GoogleFonts.adamina(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Container(height: 500,
                child: ListView.builder(itemCount: 5,
                    itemBuilder: (context,index)=>Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ListTile(onTap: (){},
                        title: Text(profile[index],style: GoogleFonts.adamina(fontSize: 20),),),
                    )),
              )
            ],
          ),
        ),
      )
      ,
    );
  }
}
