import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/home/hadeth/HadethTab.dart';
import 'package:untitled2/home/quran/QuranTab.dart';
import 'package:untitled2/home/setting/SettingTab.dart';
import 'package:untitled2/home/tasbeh/TasbehTab.dart';
import 'package:untitled2/myTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'home/setting/setting_provider.dart';
import 'home/setting/setting_screen.dart';
class HomeScreen extends StatefulWidget {
  static const routeName ="home_screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
 int selectedindex=0;
  List<Widget>screenTab=[
  QuranTab(),HadethTab(),TasbehTab(),SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
      image :AssetImage(settingProvider.getMainBackground()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
         //elevation: 0,
          //title: Text(TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.bold),
       title: Text("Islami"),
          //title: Text(AppLocalizations.of(context)!.app_title),
          ),
        body: screenTab[selectedindex],
        bottomNavigationBar:BottomNavigationBar(
         // currentIndex: SelectedIndex,
          onTap: (int index){
    setState((){
     selectedindex=index;
    });
          },
  currentIndex:selectedindex,

  items:[
    BottomNavigationBarItem(
      backgroundColor: Theme.of(context).primaryColor,
      icon:  ImageIcon(AssetImage("assets/images/icon_quran.png")),
      //label: "Quran",
      label: AppLocalizations.of(context)!.quran_title,
    ),
    BottomNavigationBarItem(
      backgroundColor: Theme.of(context).primaryColor,
      icon:  ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
     // label: "Hadeth",
      label: AppLocalizations.of(context)!.hadeth_title,
    ),
    BottomNavigationBarItem(
      backgroundColor: Theme.of(context).primaryColor,
      icon:  ImageIcon(AssetImage("assets/images/icon_sebha.png")),
     //label: "Tasbeh",
      label: AppLocalizations.of(context)!.tasbeh_title,
    ),
    BottomNavigationBarItem(
      backgroundColor: Theme.of(context).primaryColor,
      icon:  Icon(Icons.settings),
      //  label:"Setting",
     label: AppLocalizations.of(context)!.settings_title,
    ),
  ],
        ),
        ),
      );
  }
}
