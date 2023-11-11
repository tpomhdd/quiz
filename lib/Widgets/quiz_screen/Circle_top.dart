


import 'package:flutter/material.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
import 'package:quzi/utils/man_widget/txt.dart';
class Circle_top extends StatefulWidget {
  const Circle_top({Key? key}) : super(key: key);

  @override
  State<Circle_top> createState() => _Circle_topState();
}

class _Circle_topState extends State<Circle_top> {
  @override
  Widget build(BuildContext context) {
    return           CircleAvatar(
      backgroundColor: MyColor.myGay2.withOpacity(0.8),
      radius: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(color: Colors.white, text: 'Question', size: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(color: Colors.lightBlue, text: '6', size: 25),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(color: Colors.white, text: ' / 12', size: 25),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
