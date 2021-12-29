import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:music_slider/music_slider.dart';

import '../../style.dart';

class DriveMode extends StatefulWidget{
  const DriveMode({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DriveModeState();
  }

}

class DriveModeState extends State<DriveMode>
{
  String svgPath="assets/icons/";

 
  
  
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    
    return Scaffold(
          body:
            Stack(children: [
              Container(color: Style.accentGold,width: w,height: h,),
              Container(color: Style.driveBack,width: w,height: h,),


          
            tripleImageCorner(w, h),
            Padding(
              padding: const EdgeInsets.only(top: 24,left: 24),
              child: Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
            ),
            Positioned(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Podcast Name",style: Theme.of(context).textTheme.headline4,),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 5),
                  child: Text("Episode name which is long...".length > 16 ? "Episode name which is long...".substring(0,16)+"..." : "Episode name which is long...",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 32),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:12),
                  child: Row(
                    children: [
                      SvgPicture.asset(svgPath+"mic.svg",color: Style.accentGold,),
                      Padding(
                        padding: const EdgeInsets.only(left:5),
                        child: Text("Host Name",style: Theme.of(context).textTheme.subtitle2),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 68),
                  child: SizedBox(width: w,height: 80,child: MusicSlider(
                    emptyColors: const [Colors.white],
                    fillColors: const [
                      Style.accentGold,
                    ],
                    controller: MusicSliderController(initialValue: 0.5),
                    animateWaveByTime: false,
                    height: 50,
                    division: 53,
          
                    wave: (x, t, a) => a * cos(x * 0.32) * sin(x * 0.23),
                  )),
                ),
                Align(child: RichText(text:  TextSpan(children:<TextSpan>[
                  TextSpan(text: '12 : 31',style: Theme.of(context).textTheme.headline1!.copyWith(color: Style.accentGold)),
                  TextSpan(text: ' / ', style:  Theme.of(context).textTheme.headline1),
                  TextSpan(text: '26 : 45',style:  Theme.of(context).textTheme.headline1),
          
                ]),),alignment: Alignment.center,),
                Padding(
                  padding: const EdgeInsets.only(top: 83),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(child: SvgPicture.asset(svgPath+"pre.svg",width: 28,height: 28,color: Colors.white,),),
                      SvgPicture.asset(svgPath+"pause.svg",width: 48,height: 48,color: Style.accentGold,),
                      InkWell(child: SvgPicture.asset(svgPath+"forw.svg",width: 28,height: 28,color: Colors.white,),),
          
                    ],),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(svgPath+"circle_left.svg",width: 35,height: 35,color: Colors.white,),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: SvgPicture.asset(svgPath+"playlist.svg",width: 44,height: 42,color: Colors.white,),
                      ),
                      SvgPicture.asset(svgPath+"circle_righ.svg",width: 35,height: 35,color: Colors.white)
                    ],),
                ),
          
              ],
            ),top: 230,left: 42,right: 42,),
              Positioned(bottom: 80,child: Align(child: SizedBox( width: w,child: Divider(color: Colors.white.withOpacity(0.5),height: 1,)),alignment: Alignment.bottomCenter,)),
              Positioned(bottom: 30,left: 38,child: Align(child: Row(
                children: [
                SvgPicture.asset(svgPath+"carmode.svg",width: 20,height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text("Swipe to exit Drive mode",style: Theme.of(context).textTheme.bodyText1,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: SvgPicture.asset(svgPath+"swipe.svg",width: 20,height: 8,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SvgPicture.asset(svgPath+"carmode_outline.svg",width: 20,height: 18,),
                ),

              ],),alignment: Alignment.bottomCenter,)),



            ],)
      ,
    );
  }


  tripleImageCorner(w,h)
  {
    return  Stack(children: [

      Positioned(left: 80,top: -302,child: Transform.rotate(angle: -0.15,child:
      Card( shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),clipBehavior: Clip.antiAliasWithSaveLayer,elevation: 0,shadowColor: Style.headerDarkLayer,child: Image.network(
        //model!.imageUrl,
        'https://picsum.photos/564/567',
        fit: BoxFit.cover,
        height: h/1.9,
        width: w,
      ))
      )),
      Positioned(left: 15,top: -302,child: Transform.rotate(angle: 0.40,child:
      Card( shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),clipBehavior: Clip.antiAliasWithSaveLayer,elevation: 0,shadowColor: Style.headerDarkLayer,child: Image.network(
        //model!.imageUrl,
        'https://picsum.photos/564/567',
        fit: BoxFit.cover,
        height: h/1.9,
        width: w,
      ))
      )),
      //shadow for prevoius

      Positioned(left: 25,top: -300,child: Transform.rotate(angle: 0.22,child:
      Card( shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
      ),clipBehavior: Clip.antiAliasWithSaveLayer,elevation: 20,shadowColor: Colors.black.withOpacity(0.5),child: Image.network(
        //model!.imageUrl,
        'https://picsum.photos/1920/468',
        fit: BoxFit.cover,
        height: h/1.9,
        width: w,
      ))
      )),

    ],);
  }



  settings(w,h)
  {
    showMaterialModalBottomSheet(
      expand: false,
      context: context,

      backgroundColor: Style.gray38,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24))),
      builder: (context) => SizedBox(width: w,height: h/3.5,child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23,left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween  ,
              children: [

                Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined,color: Colors.white,size: 18,) ,decoration:
                BoxDecoration(color: Style.gray48.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: SvgPicture.asset(svgPath+"setting.svg",color:Colors.white38,width: 16,height: 16),
                    ),
                    Text("Player Options",style: Theme.of(context).textTheme.bodyText1),

                  ],
                ),
                Container(width: 44,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"repeat.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"shuffle.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"sleep.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"cast.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),

              ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 22),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Row(children: [
                  SvgPicture.asset(svgPath+"carmode.svg"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Drive Mode",style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16)),
                  ),

                ],),
              ),
              height: 56,decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Style.gray38,border: Border.all(color:Style.gray58,width: 1)),),
          )
        ],
      )
        ,),
    );
  }

}