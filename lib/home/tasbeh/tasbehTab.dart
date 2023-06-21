import 'package:flutter/material.dart';
import 'dart:math';
class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String> Tasbeh = [
    "سبحان الله", //0
    "الحمدلله", //1
    "الله اكبر", //2
  ];

  int index = 0;
  int num = 0;

  @override
      Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage(
                 /* ThemeMode.isDark=="Dark",
                      ?"assets/images/head_sebha_dark.png":
                */
                "assets/images/head_sebha_logo.png",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.only(top: 65),
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: num * pi / 18,
                child: const Image(
                  image: AssetImage(
                  /*  Theme.isDark?
                    "assets/images/body_sebha_dark.png":*/
                      "assets/images/body_sebha_logo.png",

                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "عدد التسبيحات",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFF141A2E),
          ),
          child: Text(
            "$num",
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Tasbeh[index];
                setState(() {});
              },
              icon: Icon(
                Icons.arrow_left,
                size: 30,
                color: Colors.black,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Color(0xffFACC1D),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num++;
                    if (num  == 34) {
                      num = 0;
                      index++;
                      if (index== 3) {
                        index=0;
                      }
                    }
                  });
                },
                child: Text(
                  Tasbeh[index],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF141A2E),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Tasbeh[index];
              },
              icon: Icon(
                Icons.arrow_right,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
