import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Player extends StatefulWidget{
  const Player({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PlayerState();
  }

}

class PlayerState extends State<Player>
{
  String svgPath="assets/icons/";
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body:
    Stack(children: [



      Blur(blur: 6.5,blurColor: Colors.transparent,child: Image.network("https://picsum.photos/1080/1920",width: w,height: h,fit: BoxFit.fill, colorBlendMode: BlendMode.overlay,)),


      Padding(
        padding: const EdgeInsets.only(top: 24,left: 24),
        child: Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined) ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
      ),
      tripleImageCorner(w, h),
      rightBottons(),
      Column(children: [
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

        const StepProgressIndicator(
          totalSteps: 15,
          currentStep: 12,
          size: 40,
          selectedColor: Color(0xffFF5959),
          unselectedColor: Colors.white,
          roundedEdges: Radius.circular(50),

        ),

      ],)

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
    Color iconBack=Color(0xff121212).withOpacity(0.30);
   return Positioned(right: 30,top: 50,child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"share.svg") ,decoration: BoxDecoration(color: iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"addlist.svg") ,decoration: BoxDecoration(color: iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"like.svg") ,decoration: BoxDecoration(color: iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 39,left: 0),
         child: Container(padding: EdgeInsets.all(14),width: 50,height: 50,child: SvgPicture.asset(svgPath+"download.svg") ,decoration: BoxDecoration(color: iconBack,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
       ),
     ],));
  }


}