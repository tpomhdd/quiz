import 'package:flutter/material.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/model/Answer.dart';
class loadd extends StatefulWidget {
  const loadd({Key? key}) : super(key: key);

  @override
  State<loadd> createState() => _loaddState();
}

class _loaddState extends State<loadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Answer>(
        future: mydata().getAnswer(),

        builder: (){}
        ,

      ),
    );
  }
}
