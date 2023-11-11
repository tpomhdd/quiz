import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quzi/Screen/List_Quiz.dart';
import 'package:quzi/Screen/Quiz_Screen.dart';
import 'package:quzi/Screen/Register_Screen.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/cubit/answer_cubit.dart';
import 'package:quzi/data/cubit/question_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpOverrides.global=MyHttpOverrides();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>QuestionCubit(mydata())..mydatafetch()),

        BlocProvider(create: (context)=>AnswerCubit(mydata())..mydatafetch()),

      ],


      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          // ignore: deprecated_member_use


          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Register_Screen(),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override

  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

