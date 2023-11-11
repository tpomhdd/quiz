import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:quickalert/quickalert.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:quzi/data/api_service.dart';

import 'package:quzi/data/errors/failures.dart';
import 'package:quzi/data/model/Answer.dart';
import 'package:quzi/data/model/Question.dart';

import 'dart:convert';

import 'package:quzi/utils/man_widget/mytext.dart';
import 'package:shared_preferences/shared_preferences.dart';



class mydata {

final  int countall=0;
  int counttrue=0;
  int countfalse=0;

  ApiService apiService=ApiService(Dio());
static  saveperf(String username,String sharedname)async  {

  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  sharedPreferences.setString(sharedname, username);
  print(sharedPreferences.get(sharedname));


}


  Future <Either<Failure, List<Question_model>>> getQuestion() async {
    Uri uri = Uri.parse("https://tpowep.com/api/Question.php");
    //Uri uri = Uri.parse("http://mhdmsriii.somee.com/WebForm2.aspx");

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();
    List <Question_model> mylist = [];
    var _data = jsonDecode(jsonsDataString);
    //print(_data.toString());
    for (var mydata in _data) {
      mylist.add(Question_model.fromJson(mydata));
    }

    return right(mylist);
  }

Future <Either<Failure, List<Question_model>>> ggetQuestion() async {
  Uri uri = Uri.parse("https://tpowep.com/api/Question.php");
  //Uri uri = Uri.parse("http://mhdmsriii.somee.com/WebForm2.aspx");

  http.Response response = await http.get(uri);
  String jsonsDataString = response.body.toString();
  List <Question_model> mylist = [];
  var _data = jsonDecode(jsonsDataString);
  //print(_data.toString());
  for (var mydata in _data) {
    mylist.add(Question_model.fromJson(mydata));
  }

  return right(mylist);
}
  static Future gethttp(String url) async {
    Uri uri = Uri.parse(url);

    //Uri uri = Uri.parse("http://mhdmsriii.somee.com/WebForm2.aspx");

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();

    var _data = jsonDecode(jsonsDataString);
return _data;  }

  static Future getCOUNT(BuildContext context) async {
getCOUNTtrue();
getCOUNTfalse();
SharedPreferences preferences=await SharedPreferences.getInstance();
String username=  preferences.getString('user').toString();

Uri uri = Uri.parse("https://tpowep.com/api/COUNT.php?user=${username}");



   //var _data = gethttp("https://tpowep.com/api/COUNT.php")as Map<dynamic,String>;
//print(_data);

   http.Response response = await http.get(uri);
   String jsonsDataString = response.body.toString();

   var _data = jsonDecode(jsonsDataString);
  var truesum=await getCOUNTtrue();
    var falsesum=await getCOUNTfalse();
  //  int counttrue=int.parse(truesum);
//    int countfalse=int.parse(falsesum);
    var sum=_data[0]['0'];

    int count=int.parse(sum);
    if(count>=10)
      QuickAlert.show(context: context,

          type: QuickAlertType.custom,
          widget: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
             children: [
               Row(
                 children: [
                   Expanded(child: Column(
                     children: [
                       Icon(Icons.check_circle_sharp,size: 47,color: Colors.green,),
                       MyText(color: Colors.black, text: 'الاجابات الصحيحة', size: 15),
                       MyText(color: Colors.black, text: truesum.toString(), size: 33),


                     ],
                   )),

                   Expanded(child: Column(
                     children: [
                       Icon(Icons.close,size: 47,color: Colors.red,),
                       MyText(color: Colors.black, text: 'الاجابات الخاطئة', size: 15),
                       MyText(color: Colors.black, text:falsesum.toString(), size: 33),


                     ],
                   )),


                 ],
               )
             ],
          ),


          confirmBtnText: 'Play Again',
          cancelBtnText: 'No',
          confirmBtnColor: Colors.green,



          title: ''
      ) ;



  }
  static Future getCOUNTtrue() async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    String username=  preferences.getString('user').toString();

    Uri uri = Uri.parse("https://tpowep.com/api/COUNT_true.php?user=${username}");


    //var _data = gethttp("https://tpowep.com/api/COUNT.php")as Map<dynamic,String>;
//print(_data);

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();

    var _data = jsonDecode(jsonsDataString);
    print(_data[0]['0']);
    return _data[0]['0'];

  }
  static Future getCOUNTfalse() async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    String username=  preferences.getString('user').toString();

    Uri uri = Uri.parse("https://tpowep.com/api/COUNT_false.php?user=${username}");


    //var _data = gethttp("https://tpowep.com/api/COUNT.php")as Map<dynamic,String>;
//print(_data);

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();

    var _data = jsonDecode(jsonsDataString);
    print(_data[0]['0']);
    return _data[0]['0'];

  }
//
  Future <Either<Failure, List<Answer>>> getAnswer() async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    String username=  preferences.getString('user').toString();
    Uri uri = Uri.parse("https://tpowep.com/api/api_qn.php?user=${username}");


    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();
    List <Answer> mylist = [];
    var _data = jsonDecode(jsonsDataString);
//ss    print(_data.toString());
    for (var mydata in _data) {
      mylist.add(Answer.fromJson(mydata));
    }

    return right(mylist);
  }

  Future ggetAnswer() async {
  }
  static Future AddAnswer
      (String id,String Answer) async {
     SharedPreferences preferences=await SharedPreferences.getInstance();
     String username=  preferences.getString('user').toString();
    // // print(sharedPreferences.get(sharedname));
//code_qn.php
    var data = {
      "id": id,
      "answer":Answer,

      "ser":username
    };
    Uri uri = Uri.parse("https://tpowep.com/api/code_qn.php");
    var reesponse = await http.post(uri, body: data);
    var responsebody = jsonDecode(reesponse.body);




  }

}