import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostelbooking/project/view/Home.dart';

import 'login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBoYxT8kHypaI_zw0NcfqUyCTlOTWBPUsw",
        appId: "1:965984762218:android:9899003eb7c2e615820d13",
        messagingSenderId: "",
        projectId: "hostelbooking-13eb8")
  );
  User? user= FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(
    home: user==null ?Splash():Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login_page()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "asset/image/splash screen.png",
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
