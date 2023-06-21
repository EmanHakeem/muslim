import 'dart:async';
import 'package:flutter/material.dart';
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName ="splash_screen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
   /* return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash.png"),
          fit: BoxFit.cover,
        )
      ),
    );
      child: */
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/splash – 1.png"),
        fit: BoxFit.fill),

      ),
      child: Scaffold(

          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset('assets/images/splash – 1.png'),
              //  'assets/images/splash.png'),
          ),
        ),
    );

  }
}