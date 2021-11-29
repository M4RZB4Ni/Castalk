import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  const Profile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProfileState();

  }



}
class ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    
    
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    
    
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(preferredSize: Size(w,300),
    child:Stack(children: [
        Container(
            width: w,
            height: 180,
            decoration:
        BoxDecoration(color:const Color(0xff414141),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(40))),
      Padding(
        padding: const EdgeInsets.only(top: 24,left: 24),
        child: Container(width: 44,height: 44,child: const Icon(Icons.edit,color: Colors.white,) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
      ),

      Align(alignment: Alignment.topRight,child: Positioned(
          child: Padding(
        padding: const EdgeInsets.only(top: 0,left: 0),
        child: Container(width: 44,height: 85,child: const Icon(Icons.more,color: Colors.white,) ,decoration: BoxDecoration(color: const Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(34)))),
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
                          width: 13,height: 13,child: Icon(Icons.check,color: Theme.of(context).backgroundColor,size: 13,)),
                    )
                  ],
                ),
              )
        ],)),
      ),

      Row(children: [

      ],)


    ],)),
    );
  }

}