import 'package:flutter/material.dart';
import 'package:untitled2/homeScreen.dart';
import 'package:untitled2/myTheme.dart';
import 'package:untitled2/quran/sura_details_screen.dart';
import 'package:untitled2/splash.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routeName: (context) =>HomeScreen(),
        SplashScreen.routeName: (context) =>SplashScreen(),
        SuraDetailsScreen.routeName:(context)=>SuraDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

