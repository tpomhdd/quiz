import 'package:flutter/material.dart';
import 'package:quzi/Widgets/List_Quiz/List_Quasetion.dart';
import 'package:quzi/Widgets/List_Quiz/Slider_Quasetion.dart';
import 'package:quzi/Widgets/Register_Screen/bottombar.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/utils/man_widget/Btn.dart';
class List_Quiz extends StatefulWidget {
  const List_Quiz({Key? key}) : super(key: key);

  @override
  State<List_Quiz> createState() => _List_QuizState();
}

class _List_QuizState extends State<List_Quiz> {
  @override
  Widget build(BuildContext context) {


setState(() {
  mydata.getCOUNT(context);
mydata().ggetQuestion();



});
    return Directionality(
      
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.transparent,



        bottomNavigationBar: bottom_bar(),

        body: Slider_Quasetion(),

      ),
    );
  }
}
