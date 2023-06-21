import 'package:flutter/material.dart';
import 'package:untitled2/home/setting/theme_bottom_sheet.dart';
class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}
class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var theme= Theme.of(context);
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Theme",style: theme.textTheme.bodyMedium,),
          SizedBox(height: 10.0,),
          InkWell(onTap: (){
            showThemeBottomSheet();
          },
            child:
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: theme.primaryColor,)
                ),
                child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Dark",
                style: theme.textTheme.bodySmall,),
                Icon(Icons.check,color:Colors.white),
              ],),),
          ),
          SizedBox(height: 30.0,),
          Text("Language",style: theme.textTheme.bodyMedium,),
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: theme.primaryColor,)
            ),
            child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English",
                  style: theme.textTheme.bodySmall,),
               // Icon(Icons.check,color:Colors.white),
            Icon(Icons.arrow_drop_down,
            //color: theme.accentcolor,
            size: 28,),
              ],),),
    ],),
    ),);
  }
  void showThemeBottomSheet(){
    showModalBottomSheet(context: context,
      builder: (context)=>
          //ThemeBottomSheet(),
          Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
         /* borderRadius: BorderRadius.only(
            topLeft:Radius.circular(12.0),
            topRight:Radius.circular(12.0),
          ),*/
        ),
        child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Light",style: Theme.of(context).textTheme.bodySmall,),

              Icon(Icons.check,color: Colors.white,),
            ],
          )
          ],
        ),
      ),
    ),);
  }
}
