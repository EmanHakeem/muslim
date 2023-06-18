import 'package:flutter/material.dart';
import 'package:untitled2/quran/sura_details_screen.dart';
import 'sura_details_screen_ars.dart';
class SuraTitleWidget extends StatelessWidget {
String title ;
int index ;
SuraTitleWidget({
  required this.title ,
  required this.index
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: (){
     Navigator.pushNamed(context, SuraDetailsScreen.routeName,
     arguments: SuraDetailsScreenArs(index: index, title: title));
    },
    child: Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),
    ),
    );
  }
}
