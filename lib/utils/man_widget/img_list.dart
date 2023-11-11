import 'package:flutter/material.dart';
class Img_List extends StatefulWidget {
  final String img_url;
  final double img_height;
  const Img_List({Key? key, required this.img_url, required this.img_height}) : super(key: key);

  @override
  State<Img_List> createState() => _Img_ListState();
}

class _Img_ListState extends State<Img_List> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: widget.img_height,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),  // height: MediaQuery.of(context).size.height*.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(widget.img_url))),
          ),
        ),
      ),
    )
    ;
  }
}
