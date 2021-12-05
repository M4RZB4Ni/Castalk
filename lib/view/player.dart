import 'dart:math';
import 'dart:ui';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_slider/music_slider.dart';

class Player extends StatefulWidget{
  const Player({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PlayerState();
  }

}

class PlayerState extends State<Player>
{
//  MusicSliderController _sliderController = MusicSliderController();
  String svgPath="assets/icons/";
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body:
    Stack(children: [



      Blur(blur: 6.5,blurColor: Colors.lightBlueAccent.shade100,child: Image.network("https://picsum.photos/id/1032/1080/1920",width: w,height: h,fit: BoxFit.fill, colorBlendMode: BlendMode.overlay,)),



      tripleImageCorner(w, h),
      rightBottons(),
      Padding(
        padding: const EdgeInsets.only(top: 24,left: 24),
        child: Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
      ),
      Positioned(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Podcast Name",style: Theme.of(context).textTheme.headline3,),
          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 5),
            child: Text("Episode name which is long...",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 22,fontWeight: FontWeight.w400),),
          ),
          Row(
            children: [
              SvgPicture.asset(svgPath+"mic.svg",),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Text("Host Name",style: Theme.of(context).textTheme.bodyText2!.copyWith(color: const Color(0xff0E0E0E)),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: SizedBox(width: w,height: 80,child: MusicSlider(
              emptyColors: const [Colors.white],
              fillColors: const [
                Color(0xff484848),
              ],
              controller: MusicSliderController(initialValue: 0.5),
              animateWaveByTime: false,
              height: 50,
              division: 53,

              wave: (x, t, a) => a * cos(x * 0.32) * sin(x * 0.23),
            )),
          ),
          Align(child: RichText(text: const TextSpan(children:<TextSpan>[
            TextSpan(text: '12 : 31',style: TextStyle(color: Style.gray48,fontWeight: FontWeight.w500,fontSize: 14)),
            TextSpan(text: ' / ', style:  TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14)),
            TextSpan(text: '26 : 45',style:  TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14)),

          ]),),alignment: Alignment.center,),
          Padding(
            padding: const EdgeInsets.only(top: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              InkWell(child: SvgPicture.asset(svgPath+"pre.svg"),),
              Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"circle_left.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
              Container(padding: const EdgeInsets.all(26),width: 80,height: 80,child: SvgPicture.asset(svgPath+"pause.svg",width: 28,height: 28,) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.49),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(28)),),
              Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"circle_righ.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
              InkWell(child: SvgPicture.asset(svgPath+"forw.svg"),),

            ],),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"setting.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                Container(padding: const EdgeInsets.all(0),width: 102,height: 47,child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(svgPath+"comment.svg",width: 19,height: 19,),
                    const Text('254',style:  TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14)),

                  ],
                ) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.49),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"playlist.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),

              ],),
          )


        ],
      ),top: h/1.9,left: 42,right: 42,),



    ],)
    );
  }

  tripleImageCorner(w,h)
  {
    return  Stack(children: [


      Positioned(left: -150,top: -30,child: Transform.rotate(angle: -6.45,child: ClipRRect(
        borderRadius: BorderRadius.circular(52.0),
        child: Image.network(
          //model!.imageUrl,
          'https://picsum.photos/319/324',
          fit: BoxFit.fill,
          height: h/1.9,
          width: w,
        ),
      ))),
      Positioned(left: -130,top: -40,child: Transform.rotate(angle: 0.22,child:
      Card( shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),clipBehavior: Clip.antiAliasWithSaveLayer,elevation: 5,shadowColor: Color(0xff1E2224B2).withOpacity(0.3),child: Image.network(
        //model!.imageUrl,
        'https://picsum.photos/454/458',
        fit: BoxFit.cover,
        height: h/1.9,
        width: w,
      ))
      )),
      Positioned(left: -130,top: -50,child: Transform.rotate(angle: 0.11,child:
      Card( shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),clipBehavior: Clip.antiAlias,elevation: 5,shadowColor: Colors.black.withOpacity(0.5),child: Image.network(
        //model!.imageUrl,
        'https://picsum.photos/468/468',
        fit: BoxFit.cover,
        height: h/1.9,
        width: w,
      ))
      )),
    ],);
  }

  rightBottons()
  {
   return Positioned(right: 30,top: 50,child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"share.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"addlist.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"like.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"download.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
     ],));
  }

  playerSection()
  {
      return  Positioned.fill(child: Align(child: Column(
          children: [
            Text("Podcast Name",style: Theme.of(context).textTheme.headline3,),
            Text("Episode name which is long...",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 22,fontWeight: FontWeight.w400),),
            Row(
              children: [
                SvgPicture.asset(svgPath+"mic.svg"),
                Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: Text("Host Name",style: Theme.of(context).textTheme.bodyText2!.copyWith(color: const Color(0xff0E0E0E)),),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: MusicSlider(
                emptyColors: const [Colors.white],
                fillColors: const [
                  Color(0xff484848),
                ],
                controller: MusicSliderController(initialValue: 0.5),
                animateWaveByTime: false,
                height: 50,
                division: 53,

                wave: (x, t, a) => a * cos(x * 0.32) * sin(x * 0.23),
              ),
            ),

          ]),alignment: Alignment.bottomCenter,));

  }

}