import 'package:flutter/material.dart';
import 'package:quzi/data/model/Question.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
class Question extends StatefulWidget {

  final Question_model txt_qn;
  const Question({Key? key, required this.txt_qn}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 10),
      child: Container(

        //   width: MediaQuery.of(context).size.width/2.2,
        //           height: 120,
        decoration: BoxDecoration(
            color: MyColor.myBlue,
            borderRadius: BorderRadius.circular(22),

          boxShadow: [
            BoxShadow(
              color:Colors.black,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child:

          MyText(color: Colors.white,
            text:
            widget.txt_qn.id.toString()
+"- "+

                widget.txt_qn.question.toString(),
            size: 14,textAlign: TextAlign.center,),
        ),

      ),
    );
  }
}
