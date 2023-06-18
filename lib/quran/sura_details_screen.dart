import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'sura_details_screen_ars.dart';
import 'verses_widget.dart';
class SuraDetailsScreen extends StatefulWidget {
static const String routeName="sura-details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArs args=(ModalRoute.of(context)?.settings.arguments)as SuraDetailsScreenArs ;
  if(verses.isEmpty)  readFile(args.index+1);
    return Container(
      decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/images/default_bg.png"),
      fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami"),
        ),
        body:verses.isEmpty? Center(child: CircularProgressIndicator(color:Color(0xFF141A2E),),)
        :Card(margin: EdgeInsets.symmetric(horizontal: 30,vertical: 65),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: ListView.separated(
            itemBuilder: (context,index)=>VersesWidget(verses[index],index+1),
          separatorBuilder:(context,index)=>Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
               color: Color(0xFFB7935F),
              height: 5,
            ),
          ) ,
          itemCount: verses.length,),
        ),
      ),
    );
  }

  void readFile(int fileIndex) async{
  String fileContent=await rootBundle.loadString("assets/files/$fileIndex.txt");
  List<String> lines=fileContent.trim().split('\n');
  //print(lines.length);
  setState(() {
    verses=lines;
  });
  }
}
