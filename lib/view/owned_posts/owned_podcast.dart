import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OwnedPodcast extends StatefulWidget{
  const OwnedPodcast({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return OwnedPodcastState();
  }


}

class OwnedPodcastState extends State<OwnedPodcast>{

  String svgPath = "assets/icons/";


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold();
  }


}