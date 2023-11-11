import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:quzi/Widgets/Register_Screen/Body_Register_Screen.dart';
import 'package:quzi/Widgets/Register_Screen/Container_top.dart';
import 'package:quzi/const/const_widget/bk.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/Btn.dart';
import 'package:quzi/utils/man_widget/customtextformauth.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
import 'package:quzi/utils/man_widget/textfiled.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({Key? key}) : super(key: key);

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  @override
  Widget build(BuildContext context) {
    return Body_Register_Screen();
  }
}
