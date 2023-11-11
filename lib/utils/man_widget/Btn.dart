//import 'package:berlitz/theme/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final double width;
  final double sizefont;
  final void Function()? onPressed;
  final Color mycolor;
  const MyButton(
      {Key? key,
      required this.text,
      this.onPressed,
      required this.mycolor,
      required this.width,
      required this.sizefont})
      : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
     //     width: widget.width,
          decoration: BoxDecoration(
              color: widget.mycolor, borderRadius: BorderRadius.circular(20)),
          child: MaterialButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.text,
                style: TextStyle(color: Colors.white, fontFamily: 'Indie',fontSize: widget.sizefont,fontWeight: FontWeight.w700),
              ),
            ),
            onPressed: widget.onPressed,
          )),
    );
  }
}
