import 'package:flutter/material.dart';
class SettingProvider extends ChangeNotifier {
  String currentLocal="en";
ThemeMode currentTheme=ThemeMode.dark;
void changeTheme(ThemeMode newMode){
  if(newMode==currentTheme)return;
  currentTheme=newMode;
  notifyListeners();
}

bool isDark(){
  return currentTheme==ThemeMode.dark;
  String currentLocal="en";
}
String getMainBackground(){
  return currentTheme==ThemeMode.dark
      ? "assets/images/dark_bg.png":"assets/images/default_bg.png";
}
void changeLanguage(String newLang){
 if(currentLocal==newLang) return;
  currentLocal=newLang;
  notifyListeners();
}
}
