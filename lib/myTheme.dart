import 'package:flutter/material.dart';
class MyTheme  {
static   Color lightPrimary=Color(0xFFB7935F);
  static const Color darkPrimary=Color(0xFF141A2E);
  static final ThemeData lightTheme=ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black
    ),
    color: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    titleTextStyle:(
  TextStyle(
      color: Colors.black,
      fontSize:30,
      fontWeight:FontWeight.w500,
  )
  ),
),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor:MyTheme.lightPrimary,
    selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 38
    ) ,
      selectedLabelStyle:TextStyle(
        color: Colors.black,
      ) ,
    unselectedIconTheme:IconThemeData(
        color: Colors.white,
        size: 26
    ) ,
    ),
 /* @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  */
);
}
