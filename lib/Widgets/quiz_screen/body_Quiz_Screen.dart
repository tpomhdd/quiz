import 'package:quickalert/quickalert.dart';
import 'package:quzi/Widgets/Register_Screen/bottombar.dart';
import 'package:quzi/Widgets/quiz_screen/Answers.dart';
import 'package:quzi/Widgets/quiz_screen/Circle_top.dart';
import 'package:quzi/Widgets/quiz_screen/Container_Question.dart';
import 'package:quzi/Widgets/quiz_screen/Drawer.dart';

import 'package:quzi/Widgets/quiz_screen/Question.dart';
import 'package:quzi/const/const_widget/bk.dart';
import 'package:quzi/data/model/Question.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
import 'package:quzi/utils/man_widget/txt.dart';
import 'package:flutter/material.dart';
class body_Quiz_Screen extends StatefulWidget {
final Question_model question_model;
const body_Quiz_Screen({Key? key, required this.question_model}) : super(key: key);

  @override
  State<body_Quiz_Screen> createState() => _body_Quiz_ScreenState();
}

class _body_Quiz_ScreenState extends State<body_Quiz_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.transparent,
      bottomNavigationBar: bottom_bar(),
      drawer: Darwer(),
      body: background(
          child: ListView(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.list,color: Colors.white,size: 30,)

                ],
              ),
SizedBox(height: 55,),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Circle_top(),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 2,
                    width: 155,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container_Question(question_model: widget.question_model,)
                ],
              ),
            ],
          )),
    );
  }
}
