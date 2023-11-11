import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/cubit/answer_cubit.dart';
import 'package:quzi/data/model/Answer.dart';
import 'package:quzi/data/model/Answer.dart';
import 'package:quzi/utils/man_widget/mytext.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
   @override
  Widget build(BuildContext context) {
    Future<void> _refreshProducts(BuildContext context) async {
      return mydata().ggetAnswer();   }


    return Container(
      height: 55,
      child: InkWell(
        onTap: (){
          setState(() {
            _refreshProducts(context);

          });
        },
        child: RefreshIndicator(
          onRefresh: () =>_refreshProducts(context),

          child: BlocBuilder<AnswerCubit, AnswerState>(
            builder: (context, state) {
if(state is Answertrue) {
  return

        ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: state.myAnswer.length,
            itemBuilder: (context,index){

          return  Icon(state.myAnswer[index].answer=="true"? Icons.check:Icons.close,
            color:state.myAnswer[index].answer=="true"? Colors.green:Colors.red, size: 40,);

        });
}

else   if(state is AnswerError) {
  return MyText(color: Colors.white, text: state.errMessage, size: 50);

}else
{return CircularProgressIndicator();}
},
          ),
        ),
      ),
    );
  }
}
