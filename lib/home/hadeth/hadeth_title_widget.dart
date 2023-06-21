import 'package:flutter/material.dart';
import 'package:untitled2/home/hadeth/hadeth_data_class.dart';
import 'package:untitled2/home/hadeth/hadeth_details.dart';
class  HadethTitleWidget extends StatelessWidget {
String title,content;

HadethTitleWidget(this.title,this.content);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("done");
        Navigator.pushNamed(context,HadethDetails.routeName,
            arguments: HadethDataClass(title, content));
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
