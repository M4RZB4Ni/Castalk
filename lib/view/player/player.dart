import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:audio_slider/audio_slider.dart';
//import 'package:music_slider/music_slider.dart';

class Player extends GetView<Player>
{
  //MusicSliderController _sliderController = MusicSliderController();
  String svgPath="assets/icons/";
  Timer? timer;
  List<double> valueData = <double>[];

  // @override
  // void initState() {
  //   super.initState();
  //   timer = Timer.periodic(const Duration(milliseconds: 400), (timer) {
  //     valueData.add(20+Random().nextInt(5).toDouble());
  //     setState(() {});
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   timer?.cancel();
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
    Stack(
      children: [
      Blur(blur: 6.5,blurColor: Colors.lightBlueAccent.shade100,child: Image.network("https://picsum.photos/id/1032/1080/1920",width: Get.width,height: Get.height,fit: BoxFit.fill, colorBlendMode: BlendMode.overlay,)),
      tripleImageCorner(Get.width, Get.height),
      rightBottons(),
      Padding(
        padding: const EdgeInsets.only(top: 11,left: 24),
        child: Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
      ),
      Positioned(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Podcast Name",style: Get.textTheme.headline3,),
          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 5),
            child: Text("Episode name which is long...",style: Get.textTheme.headline1!.copyWith(fontSize: 22,fontWeight: FontWeight.w400),),
          ),
          Row(
            children: [
              SvgPicture.asset(svgPath+"mic.svg",),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Text("Host Name",style: Get.textTheme.bodyText2!.copyWith(color: const Color(0xff0E0E0E)),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: SizedBox(width: Get.width,height: 80,
                child: CopyXiaoMiSliderWidget(
                  datas: valueData,
                  isPlayer: true,
                  duration: const Duration(milliseconds: 333),
                ),
            //     MusicSlider(
            //   emptyColors: const [Colors.white],
            //   fillColors: const [
            //     Color(0xff484848),
            //   ],
            //   controller: MusicSliderController(initialValue: 0.5),
            //   animateWaveByTime: false,
            //   height: 50,
            //   division: 53,
            //
            //   wave: (x, t, a) => a * cos(x * 0.32) * sin(x * 0.23),
            // ),
            ),
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
            padding: const EdgeInsets.only(top: 47),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: () {
                  settings(context, Get.width, Get.height);
                },child: Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"setting.svg") ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),)),
                Container(padding: const EdgeInsets.all(0),width: 102,height: 47,child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(svgPath+"comment.svg",width: 19,height: 19,),
                    const Text('254',style:  TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14)),

                  ],
                ) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.49),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                Container(padding: const EdgeInsets.all(14),width: 47,height: 47,child: SvgPicture.asset(svgPath+"playlist.svg",) ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),

              ],),
          )


        ],
      ),top: Get.height/2,left: 42,right: 42,),



    ],)
    );
  }

  tripleImageCorner(w,h)
  {
    return  Stack(children: [


      Positioned(left: -180,top: -80,child: Transform.rotate(angle: -6.45,child: ClipRRect(
        borderRadius: BorderRadius.circular(52.0),
        child: Image.network(
          //model!.imageUrl,
          'https://picsum.photos/319/324',
          fit: BoxFit.fill,
          height: h/1.9,
          width: w,
        ),
      ))),
      Positioned(left: -160,top: -100,child: Transform.rotate(angle: 0.22,child:
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
      Positioned(left: -160,top: -120,child: Transform.rotate(angle: 0.11,child:
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
   return Positioned(right: 53,top: 50,child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: const EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(Cicon.share) ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: const EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(Cicon.addlist) ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: const EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(Cicon.like) ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: const EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(Cicon.download) ,decoration: BoxDecoration(color: Style.iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
     ],));
  }

  playerSection()
  {
      return  Positioned.fill(child: Align(child: Column(
          children: [
            Text("Podcast Name",style: Get.textTheme.headline3,),
            Text("Episode name which is long...",style: Get.textTheme.headline1!.copyWith(fontSize: 22,fontWeight: FontWeight.w400),),
            Row(
              children: [
                SvgPicture.asset(Cicon.mic),
                Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: Text("Host Name",style: Get.textTheme.bodyText2!.copyWith(color: const Color(0xff0E0E0E)),),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: CopyXiaoMiSliderWidget(
                datas: valueData,
                isPlayer: true,
                duration: const Duration(milliseconds: 333),
              ),
              // MusicSlider(
              //   emptyColors: const [Colors.white],
              //   fillColors: const [
              //     Color(0xff484848),
              //   ],
              //   controller: MusicSliderController(initialValue: 0.5),
              //   animateWaveByTime: false,
              //   height: 50,
              //   division: 53,
              //
              //   wave: (x, t, a) => a * cos(x * 0.32) * sin(x * 0.23),
              // ),
            ),

          ]),alignment: Alignment.bottomCenter,));

  }

  settings(context, w,h)
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [

                      Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined,color: Colors.white,size: 18,) ,decoration:
                      BoxDecoration(color: Style.gray48.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: SvgPicture.asset(Cicon.setting,color:Colors.white38,width: 16,height: 16),
                          ),
                          Text("Player Options",style: Get.textTheme.bodyText1),

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
                          child: Text("Drive Mode",style: Get.textTheme.bodyText1!.copyWith(fontSize: 16)),
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