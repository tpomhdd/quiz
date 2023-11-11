import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quickalert/quickalert.dart';
import 'package:quzi/Widgets/Dialog.dart';
import 'package:quzi/const/myclass.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/model/Answer.dart';
import 'package:quzi/data/model/Question.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/Btn.dart';
import 'package:quzi/utils/man_widget/txt.dart';
import '../../utils/man_widget/mytext.dart';
import 'package:get/get.dart';
class Answers extends StatefulWidget {

  final CarouselController? controller1;
final Color colorbk;
final double op;
  final Question_model question_model;

  final String AnswersText,QyuckText,id , answer,answertrue;
  final QuickAlertType quickAlertType;

  const Answers({Key? key, required this.AnswersText, required this.quickAlertType, required this.QyuckText, required this.id, required this.answer, this.controller1, required this.colorbk, required this.op, required this.answertrue, required this.question_model}) : super(key: key);

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {

  Color mycolor=Colors.white;
  String an='';
  String returnAnswer(){
    String truean='';
    if(widget.answertrue=='1'){
      truean=widget.question_model.answer1.toString();
    }else
    if(widget.answertrue=='2'){
      truean=widget.question_model.answer2.toString();
    }else if(widget.answertrue=='3'){
      truean=widget.question_model.answer3.toString();
    }
    return truean;
  }
 Future<void> getstring() async {
    an= await returnAnswer();

 } List<Answer> answer=[];
  @override
  Widget build(BuildContext context) {
    getstring();
setState(() {

});
    return            InkWell(
      onTap: (){
        print(widget.answer.toString());
        // QuickAlert.show(context: context,
        //
        //     type: widget.quickAlertType,
        //     onConfirmBtnTap: (){
        //   Navigator.pop(context);
        //   setState(() {
        //
        //   });
        //     },
        //     confirmBtnText: 'Play Again',
        //     cancelBtnText: 'No',
        //     confirmBtnColor: Colors.green,
        //
        //
        //     text:'',
        //     title: widget.QyuckText
        // ) ;
        //
        widget.controller1?.nextPage();
        setState(() {
          mycolor=widget.colorbk;
          mydata.AddAnswer(widget.id.toString(), widget.answer.toString());
          widget.op==1.0;
          String answerr='';



          Get.snackbar(

            "الاجابة الصحيحة",


            an,backgroundColor: Colors.red
          ,colorText: Colors.white,
            duration: Duration(milliseconds: 1500)
          );
          Answer  answers=Answer(id: '',answer: widget.answer,qnId: '',usernane: '');
          answer.add(answers);
          mydata.getCOUNT(context);
          mydata().ggetAnswer();




        });
},
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 1),
          child: Container(
             width: MediaQuery.of(context).size.width-15,
          //  height: 120,
          decoration: BoxDecoration(
          color: mycolor,
          borderRadius: BorderRadius.circular(22)
      ),
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: MyText(color: Colors.black, text: widget.AnswersText, size: 15,fontWeight: FontWeight.w800,textAlign: TextAlign.center,),
      ),
      ),
      ),
    );
  }
}

 Future<void> _showMyDialog(BuildContext context) async {
return showDialog<void>(
context: context,
barrierDismissible: false, // user must tap button!
builder: (BuildContext context) {
return AlertDialog(
backgroundColor: MyColor.myGay2,
title:   Stack(
  children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
              bottom: 2500,
              left: 500,
              child: Container(
                alignment: Alignment.center,
                child: CircleAvatar(
      backgroundColor: Colors.green,
      radius: 50,
      child: Icon(Icons.check,color: Colors.white,size: 100,),
    ),
              ),
            ),
          ],
        ),
  ],
),
content: const SingleChildScrollView(
child: ListBody(
children: <Widget>[

   txt(color: Colors.white, text: 'text', size: 22)
],
),
),
actions: <Widget>[
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyButton(
          text: 'Exit',
          mycolor: Colors.red,
          width: 300,
          sizefont: 32,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyButton(
          text: 'Play Again',
          mycolor: Colors.green,
          width: 300,
          sizefont: 32,
        ),
      ),
    ],

  )
],
);
},
);
}