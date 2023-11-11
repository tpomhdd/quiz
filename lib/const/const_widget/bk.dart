import 'package:flutter/material.dart';
class background extends StatefulWidget {
  final Widget child;
  const background({Key? key, required this.child}) : super(key: key);

  @override
  State<background> createState() => _backgroundState();
}

class _backgroundState extends State<background> {
  @override
  Widget build(BuildContext context) {

      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/img/bk.jpg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
            )
        ),
        child: widget.child,
      );

  }
}
