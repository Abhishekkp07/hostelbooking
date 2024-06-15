import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostelbooking/project/view/registration_page.dart';

import '../fire_functions/functions.dart';
import 'Home.dart';

class Login_page extends StatelessWidget {

  var email_cntrl= TextEditingController();
  var pass_cntrl= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [Color(0xFF01579B), Color(0xFF1E88E5)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hello, Welcome back",
              style: TextStyle(fontSize: 18, color: CupertinoColors.white),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: TextFormField(
                controller: email_cntrl,
                style: TextStyle(color: Color(0xff3C3C43)),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(37)),
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.mail,
                      size: 15,
                    ),
                    filled: true,
                    fillColor: Colors.white54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 25,
                left: 25,
                bottom: 25,
              ),
              child: TextFormField(
                controller:pass_cntrl ,
                style: TextStyle(color: Color(0xff3C3C43)),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(37)),
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.password,
                      size: 15,
                    ),
                    filled: true,
                    fillColor: Colors.white54),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              color: Color(0xFF0091EA),
              height: 55,
              minWidth: 355,
              onPressed: () {
                String email = email_cntrl.text.trim();
                String pass = pass_cntrl.text.trim();
                FirebaseHelper()
                    .loginUser(email: email, pwd: pass)
                    .then((result) {
                  if (result == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });


              },
              child: Text(
                "LOGIN",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Registration_page()));
                },
                child: RichText(
                    text: TextSpan(style: TextStyle(fontSize: 18), children: [
                  TextSpan(text: "Don't have an account?"),
                  TextSpan(
                      text: "Sign up !",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])))
          ],
        ),
      ),
    );
  }
}
