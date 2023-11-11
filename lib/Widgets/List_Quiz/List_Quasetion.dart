import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:quzi/Screen/Quiz_Screen.dart';
import 'package:quzi/Widgets/quiz_screen/Question.dart';
import 'package:quzi/const/const_widget/bk.dart';
import 'package:quzi/data/cubit/question_cubit.dart';
import 'package:quzi/data/cubit/question_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
class List_Question extends StatefulWidget {
  const List_Question({Key? key}) : super(key: key);

  @override
  State<List_Question> createState() => _List_QuestionState();
}

class _List_QuestionState extends State<List_Question> {
  @override
  Widget build(BuildContext context) {
    return background(
      child: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
if(state is Questiontrue) {
  return ListView.builder(
      itemCount: state.myQuestion.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: (){
              Get.to(Quiz_Screen(question_model: state.myQuestion[index],));
            },
            child: Question(txt_qn: state.myQuestion[index], ));
      });
}
else   if(state is QuestionError) {
  return MyText(color: Colors.white, text: state.errMessage, size: 50);

}else
{return CircularProgressIndicator();}

},
      ),
    );
  }
}
