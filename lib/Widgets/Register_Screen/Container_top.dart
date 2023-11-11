import 'package:flutter/material.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
class Container_top extends StatefulWidget {
  const Container_top({Key? key}) : super(key: key);

  @override
  State<Container_top> createState() => _Container_topState();
}

class _Container_topState extends State<Container_top> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 10,
        decoration: BoxDecoration(
            color: MyColor.myred,
            borderRadius: BorderRadius.circular(22)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyText(
                color: Colors.white,
                text: 'اختبر معلوماتك!',
                size: 25,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MyText(
                      color: Colors.white,
                      text: 'مع تطبيق ثقف سمعك',
                      size: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
