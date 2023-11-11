import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quzi/Widgets/quiz_screen/Container_Question.dart';
import 'package:quzi/const/const_widget/bk.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/cubit/question_cubit.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
class Slider_Quasetion extends StatefulWidget {

  const Slider_Quasetion({Key? key}) : super(key: key);

  @override
  State<Slider_Quasetion> createState() => _Slider_QuasetionState();
}

class _Slider_QuasetionState extends State<Slider_Quasetion> {
  CarouselController _controller1 = CarouselController();
  @override
  Widget build(BuildContext context) {

    setState(() {
mydata().getAnswer();
});    return background(

      child: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
          if(state is Questiontrue) {
            return

              CarouselSlider.builder(
                carouselController: _controller1,


              itemCount:  state.myQuestion.length,
              options: CarouselOptions(

                height:MediaQuery.of(context).size.height/2,


                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                  return Container_Question(question_model: state.myQuestion[index],controller1: _controller1,);
              },
            );

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
