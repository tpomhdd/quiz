import 'package:flutter/material.dart';
class list_answer_local extends StatefulWidget {

  const list_answer_local({Key? key}) : super(key: key);

  @override
  State<list_answer_local> createState() => _list_answer_localState();
}

class _list_answer_localState extends State<list_answer_local> {
  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
          itemCount: answer.length,
          itemBuilder: (context,index){
            return  Icon(answer[index].answer=="true"? Icons.check:Icons.close,
              color:answer[index].answer=="true"? Colors.green:Colors.red, size: 40,);


          }),
  }
}
