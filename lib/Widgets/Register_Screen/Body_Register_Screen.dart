import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quzi/Screen/List_Quiz.dart';
import 'package:quzi/Screen/Quiz_Screen.dart';
import 'package:quzi/Screen/Register_Screen.dart';
import 'package:quzi/Widgets/Register_Screen/Container_top.dart';
import 'package:quzi/const/const_widget/bk.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/Btn.dart';
import 'package:quzi/utils/man_widget/textfiled.dart';
class Body_Register_Screen extends StatefulWidget {
  const Body_Register_Screen({Key? key}) : super(key: key);

  @override
  State<Body_Register_Screen> createState() => _Body_Register_ScreenState();
}

class _Body_Register_ScreenState extends State<Body_Register_Screen> {
  TextEditingController textEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container_top(),
              SizedBox(
                height: 50,
              ),
              MyTextField(
                controller: textEditingController,
                  text: 'ادخل اسمك', mycolor: Colors.white, BorderRadius: 5, size: 20),
              SizedBox(
                height: 30,
              ),
              MyButton(
                text: 'ابدأ الاختبار ',
                mycolor: MyColor.myBlue,
                onPressed: () {

                  mydata.saveperf(textEditingController.text, "user");

                  Get.to(List_Quiz());
                },
                width: 300,
                sizefont: 32,
              )
            ],
          )),
    );
  }
}
