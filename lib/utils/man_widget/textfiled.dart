
import 'package:flutter/material.dart';
class MyTextField extends StatefulWidget {
final TextEditingController? controller;
final String text;
final bool? pass;
final double BorderRadius;
final Color mycolor;
final double size;

const MyTextField({Key? key, this.controller,required  this.text,this.pass, required this.mycolor, required this.BorderRadius, required this.size}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
    child:
          TextField(
            style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),

            controller: widget.controller,
            obscureText: widget.pass == null ||  widget.pass  == false  ? false : true,



            //  keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(


              isDense: true,
              filled: true,//
              fillColor:widget.mycolor,
              hintText: widget.text,
              helperStyle: TextStyle(fontWeight: FontWeight.w900),

              border:
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.size)),

              hintStyle:  TextStyle(
                //  color: mycolor.myhinttxt,
                  fontSize: widget.size
              ),

            ),
          )
      );
  }
}
