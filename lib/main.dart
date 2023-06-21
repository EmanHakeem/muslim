import 'package:flutter/material.dart';
import 'package:untitled2/home/hadeth/HadethTab.dart';
import 'package:untitled2/home/hadeth/hadeth_data_class.dart';
import 'package:untitled2/home/hadeth/hadeth_details.dart';
import 'package:untitled2/homeScreen.dart';
import 'package:untitled2/myTheme.dart';
import 'package:untitled2/home/quran/sura_details_screen.dart';
import 'package:untitled2/splash.dart';

import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home/setting/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  //runApp( MyApp());
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      child:  MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
 // const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
        title: 'Islami',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
       // localizationsDelegates: AppLocalizations.localizationsDelegates,
        //supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        themeMode: settingProvider.currentTheme,
        locale: Locale(settingProvider.currentLocal),
  // This widget is the root of your application.
      routes: {
        SplashScreen.routeName: (context) =>SplashScreen(),
        HomeScreen.routeName: (context) =>HomeScreen(),
        SuraDetailsScreen.routeName:(context)=>SuraDetailsScreen(),
        HadethTab.routeName:(context)=>HadethTab(),
        HadethDetails.routeName:(context)=>HadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

