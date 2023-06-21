import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/home/hadeth/hadeth_data_class.dart';
import 'package:untitled2/home/hadeth/hadeth_details.dart';
import 'package:untitled2/home/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  static const String routeName="hadeth-tab";

  @override
  State<HadethTab> createState() => _HadethTabState();
}
class _HadethTabState extends State<HadethTab> {
  List<HadethDataClass> allHadeth = [];
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Divider(color: Color(0xFFB7935F),
            thickness: 1.2,
            height: 5,),
          Text("الأحاديث",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,),
          ) ,
          Divider(color: Color(0xFFB7935F),
            thickness: 1.2,
            height: 5,),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: allHadeth[index]);
                },
                child: HadethTitleWidget(
                  allHadeth[index].title,allHadeth[index].content,
                ),
              ),
              separatorBuilder: (context, index) => Padding(
                padding:  EdgeInsets.symmetric(horizontal: 80.0),
                child: Divider(
                  color: Theme.of(context).primaryColor,
                  // color: Theme.of(context).accentColor,
                  thickness: 1.2,
                  height: 5,
                ),
              ),
              itemCount: allHadeth.length,
            ),
          ),
        ],
      ),
    );
  }
  void loadHadethFile() async {
    List<HadethDataClass> list = [];
    String content = await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> allHadethContent = content.split("#");
    for (int i = 0; i < allHadethContent.length; i++) {
      List<String> singleHadethLines = allHadethContent[i].trim().split("\n");
       String title = singleHadethLines[0];
       singleHadethLines.removeAt(0);
       String content = singleHadethLines.join("\n");
      String singleHadethContent = allHadethContent[i].trim();
      int indexOfFirstLine = singleHadethContent.indexOf("\n");

    //  String title = singleHadethContent.substring(0, indexOfFirstLine);
    //  String content = singleHadethContent.substring(indexOfFirstLine + 1);
      HadethDataClass hadeth = HadethDataClass(title, content);
      list.add(hadeth);
      // List<String> singleHadethLines = allHadethContent[i].trim().split("\n");
      // String title = singleHadethLines[0];
      // singleHadethLines.removeAt(0);
      // String content = singleHadethLines.join("\n");
    }
    print(list[0].title);
    allHadeth = list;
    setState(() {});
  }
}