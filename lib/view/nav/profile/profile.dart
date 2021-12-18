import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget{
  const Profile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProfileState();

  }



}
class ProfileState extends State<Profile>{

  String svgPath="assets/icons/";


  @override
  Widget build(BuildContext context) {
    
    
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w,300),
    child:Stack(children: [
        Container(
            width: w,
            height: 180,
            decoration:
        BoxDecoration(color:const Color(0xff414141),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(40))),
      Padding(
        padding: const EdgeInsets.only(top: 24,left: 24),
        child: Container(padding: EdgeInsets.all(10),width: 44,height: 44,child: SvgPicture.asset(svgPath+"modify.svg",width: 17,height: 17,) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
      ),

      Align(alignment: Alignment.topRight,child: Positioned(
          child: Padding(
        padding: const EdgeInsets.only(top: 0,left: 0),
        child: Container(padding: EdgeInsets.all(19),width: 44,height: 85,child: SvgPicture.asset(svgPath+"moredots.svg") ,decoration: BoxDecoration(color: const Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(34)))),
      ))),

      Padding(
        padding: const EdgeInsets.only(left: 24,top: 39),
        child: Align(alignment: Alignment.centerLeft,
            child: Row(children: [
          ClipRRect(child: Image.network("https://picsum.photos/96"),borderRadius: const BorderRadius.all(Radius.circular(20)),),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 40),
                child: Row(

                  children: [
                    Text("Host Name",style: Theme.of(context).textTheme.headline1),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(decoration: BoxDecoration(color: Theme.of(context).focusColor,shape: BoxShape.circle),
                          width: 13,height: 13,child: Icon(Icons.check,color: Style.background,size: 13,)),
                    )
                  ],
                ),
              )
        ],)),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 62,bottom: 22,),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Listens",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
            Text("12K",style: Theme.of(context).textTheme.headline1),
          ],)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 0,bottom: 22),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Listens",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                Text("12K",style: Theme.of(context).textTheme.headline1),
              ],)),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 62,bottom: 22),
        child: Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Listens",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                Text("12K",style: Theme.of(context).textTheme.headline1),
              ],)),
      )



    ],)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(
          children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                    child: Container(width: 43,height: 43,child:  Icon(Icons.edit,color: Theme.of(context).focusColor,) ,decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                    child: Text("PlayLists",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                  ),
                ],
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 17,right: 32,bottom: 17),
                  child: Text("0",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),),
                ),


/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

    ],),)
    ],
    ),
      ));
  }

}