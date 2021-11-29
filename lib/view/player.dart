

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget{
  const Player({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PlayerState();
  }

}

class PlayerState extends State<Player>
{
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(body: Stack(children: [
      SizedBox(width: w,height: h,child: Image.network("https://picsum.photos/$w/$h")),
      Column(children: [
        Container(padding: const EdgeInsets.only(top: 24),width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),

      ],),
    ],)
    );
  }


}