import 'package:flutter/material.dart';
import 'package:quzi/Widgets/quiz_screen/body_Quiz_Screen.dart';
import 'package:quzi/data/model/Question.dart';

class Quiz_Screen extends StatefulWidget {
  final Question_model question_model;
  const Quiz_Screen({Key? key, required this.question_model}) : super(key: key);

  @override
  State<Quiz_Screen> createState() => _Quiz_ScreenState();
}

class _Quiz_ScreenState extends State<Quiz_Screen> {
  @override
  Widget build(BuildContext context) {
    return body_Quiz_Screen(question_model: widget.question_model,);
  }
}
