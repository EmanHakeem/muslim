import 'package:flutter/material.dart';
import 'package:untitled2/hadeth/HadethTab.dart';
import 'package:untitled2/quran/QuranTab.dart';
import 'package:untitled2/setting/SettingTab.dart';
import 'package:untitled2/tasbeh/TasbehTab.dart';
import 'package:untitled2/myTheme.dart';
class HomeScreen extends StatefulWidget {
  static const routeName ="home_screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
 int selectedindex=0;
  List<Widget>screenTab=[
  QuranTab(),HadethTab(),TasbehTab(),SettingTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          fit: BoxFit.fill,
      image :AssetImage("assets/images/default_bg.png"),),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
         //elevation: 0,
          //title: Text(TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.bold),
       title: Text("Islami"),
          ),
        body: screenTab[selectedindex],
        bottomNavigationBar:BottomNavigationBar(
          onTap: (int index){
    setState((){
     selectedindex=index;
    });
          },
  currentIndex:selectedindex,

  items:[
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label:"Quran"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label:"Hadeth"),
            BottomNavigationBarItem(
                backgroundColor:Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label:"Sebha"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: Icon(Icons.settings),
                label:"Setting"),
          ],
        //  unselectedLabelStyle:TextStyle(
          //    color:Colors.white,) ,
        ),
        ),
      );
  }
}
