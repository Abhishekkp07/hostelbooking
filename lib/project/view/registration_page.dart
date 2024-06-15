import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostelbooking/project/fire_functions/functions.dart';

import 'login_page.dart';

class Registration_page extends StatelessWidget {
  var email_cntrl = TextEditingController();
  var pass_cntrl = TextEditingController();

  // var cpass_cntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF01579B), Color(0xFF1E88E5)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGN UP",
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
              "Just a few quick things to get started",
              style: TextStyle(fontSize: 18, color: CupertinoColors.white),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(
                right: 25,
                left: 25,
                bottom: 20,
              ),
              child: TextField(
                controller: email_cntrl,
                style: TextStyle(color: Color(0xff3C3C43)),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(37)),
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email,
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
                bottom: 20,
              ),
              child: TextField(
                controller: pass_cntrl,
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
            // Padding(
            //   padding: const EdgeInsets.only(
            //     right: 25,
            //     left: 25,
            //     bottom: 20,
            //   ),
            //   child: TextField(
            //     controller: cpass_cntrl,
            //     style: TextStyle(color: Color(0xff3C3C43)),
            //     decoration: InputDecoration(
            //         contentPadding: EdgeInsets.symmetric(vertical: 16),
            //         border: OutlineInputBorder(
            //             borderSide: BorderSide.none,
            //             borderRadius: BorderRadius.circular(37)),
            //         hintText: "Confirm password",
            //         prefixIcon: Icon(
            //           Icons.password,
            //           size: 15,
            //         ),
            //         filled: true,
            //         fillColor: Colors.white54),
            //   ),
            // ),
            SizedBox(
              height: 35,
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
                    .registerUser(email: email, pwd: pass)
                    .then((result) {
                  if (result == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login_page()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: Text(
                "Create account",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login_page()));
                },
                child: RichText(
                    text: TextSpan(style: TextStyle(fontSize: 18), children: [
                  TextSpan(text: "Already have an account?"),
                  TextSpan(
                      text: "Log in",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])))
          ],
        ),
      ),
    );
  }
}
