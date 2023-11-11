import 'package:flutter/material.dart';
import 'package:quzi/theme/mycolor.dart';
import 'package:quzi/utils/man_widget/mytext.dart';
import 'package:quzi/utils/man_widget/txt.dart';
class Darwer extends StatefulWidget {
  const Darwer({Key? key}) : super(key: key);

  @override
  State<Darwer> createState() => _DarwerState();
}

class _DarwerState extends State<Darwer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: MyColor.myGay,
        child: ListView(
           children: [
             Container(
               height: 300,
               decoration: BoxDecoration(
                  gradient: LinearGradient(colors:[
                    Colors.white,
                    MyColor.myBlue,
                  ],

                      begin: const FractionalOffset(0.0, 0.0),
                   end: const FractionalOffset(0.0, 1.0),
                   stops: [0.0, 1.0],
                   tileMode: TileMode.clamp),




                  ),
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child:txt(color: Colors.white, text: 'Muhammad', size: 35),

                   ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: txt(color: Colors.white, text: 'Your current score is 30 / 50', size:18),

                   ),
                 ],
               ),
               ),
   SizedBox(height: 22,),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: txt(color: Colors.white, text: 'RESTART GAME', size: 20),
                 ),
                 Divider(),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: txt(color: Colors.white, text: 'ABOUT US..', size: 20),
                 ),
                 Divider(),

               ],
             )

           ],
        ),
      ),
    );
  }
}
