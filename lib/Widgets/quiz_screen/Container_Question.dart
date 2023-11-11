import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quzi/Widgets/quiz_screen/Answers.dart';
import 'package:quzi/Widgets/quiz_screen/Question.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/model/Question.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/mytext.dart';

class Container_Question extends StatefulWidget {
  final Question_model question_model;
  final CarouselController? controller1;
  const Container_Question({Key? key, required this.question_model, this.controller1})
      : super(key: key);

  @override
  State<Container_Question> createState() => _Container_QuestionState();
}

class _Container_QuestionState extends State<Container_Question> {
  double op=0;
  @override
  Widget build(BuildContext context) {
//mydata.AddAnswer('0', 'Answer');
  String antrue=widget.question_model.answertrue.toString();
   setState(() {
   });
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      //height: 700,
      decoration: BoxDecoration(
          color: MyColor.myGay2, borderRadius: BorderRadius.circular(22)),
      child: Column(
        children: [
          Question(
            txt_qn: widget.question_model,
          ),
          Answers(
            colorbk:  widget.question_model.answertrue == "1"?Colors.green:Colors.red,

            AnswersText: widget.question_model.answer1.toString(),
            quickAlertType: widget.question_model.answertrue == "1"?QuickAlertType.success:QuickAlertType.error,
            QyuckText:widget.question_model.answertrue == "1"?'True Answer':'False Answer',
            id: widget.question_model.id.toString(),
            answer: widget.question_model.answertrue == "1"?"true":"false",
            controller1: widget.controller1,
            op: op,


            answertrue: widget.question_model.answertrue.toString(),
            question_model: widget.question_model,


          ),
          Answers(
            op: op,

            question_model: widget.question_model,

            AnswersText: widget.question_model.answer2.toString(),
            id: widget.question_model.id.toString(),
            answer: widget.question_model.answertrue == "2"?"true":"false",
            controller1: widget.controller1,
            colorbk: widget.question_model.answertrue == "2"?Colors.green:Colors.red,

            answertrue: widget.question_model.answertrue.toString(),

            quickAlertType: widget.question_model.answertrue == "2"?QuickAlertType.success:QuickAlertType.error,
            QyuckText: widget.question_model.answertrue == "2"?'True Answer':'False Answer',
          ),
          Answers(
            colorbk:  widget.question_model.answertrue == "3"?Colors.green:Colors.red,
            id: widget.question_model.id.toString(),
            answer: widget.question_model.answertrue == "3"?"true":"false",
            question_model: widget.question_model,

            AnswersText: widget.question_model.answer3.toString(),
            controller1: widget.controller1,
            answertrue: widget.question_model.answertrue.toString(),

            quickAlertType: widget.question_model.answertrue == "3"?QuickAlertType.success:QuickAlertType.error,
            QyuckText: widget.question_model.answertrue == "3"?'True Answer':'False Answer',
            op: op,



          ),
Opacity(opacity: op,
child: Container(
  height: 55,
  child: MyText(color: Colors.white, text:widget.question_model.answertrue.toString()
      + 'الاجابة الصحيححة', size: 35),
),)
         ],
      ),
    );
  }
}
