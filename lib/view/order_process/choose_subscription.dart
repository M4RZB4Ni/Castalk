import 'dart:math';

import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_slider/music_slider.dart';
import 'package:readmore/readmore.dart';

class ChooseSubscription extends StatefulWidget{
  const ChooseSubscription({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ChooseSubscriptionState();

  }



}
class ChooseSubscriptionState extends State<ChooseSubscription>{

  String svgPath="assets/icons/";
  TextEditingController numberController = TextEditingController();


  @override
  Widget build(BuildContext context) {


    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w,200),
          child:Stack(children: [

            Container(
                width: w,
                height: 180,
                decoration:
                BoxDecoration(color:const Color(0xff414141),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(40))),

            Padding(
              padding: const EdgeInsets.only(top: 24,left: 24),
              child: Container(padding: const EdgeInsets.all(10),width: 44,height: 44,child: SvgPicture.asset(svgPath+"arrow_fish_left.svg",width: 17,height: 17,) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
            ),
            Positioned(
                child:  Align(alignment: Alignment.topRight,child:Padding(
                  padding: const EdgeInsets.only(top: 24,right: 24),
                  child:Container(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(svgPath+"info.svg",width: 18,height: 18,),
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Style.gray48,
                      borderRadius: BorderRadius.circular(12),
                    ), /* add child content here */
                  ),
                ))
            ),

            Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Align(alignment: Alignment.bottomLeft,
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
                    ],))
            ),

          ],)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Padding(
              padding: const EdgeInsets.only(left: 27,bottom: 9,top: 36),
              child: Text("About:",style: Style.t_500_14w,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9,right: 26,left: 26,bottom: 17),
              child: ReadMoreText(
                'In this Episode we will talk about lorem ipsum. you may sd heard of it before but let’s take a new look at it you may as In this Episode we will talk about lorem ipsum. you maya a heard of it before but let’s take a new look at it In thi zcefg Episode we will talk about lorem ipsum. you may you may heard of it before but let’s take a new look at it...',
                trimLines: 2,
                style: Style.t_400_14_grayA1,
                colorClickableText: Style.accentGold,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Show less',
                moreStyle: Style.t_400_12g.copyWith(fontStyle: FontStyle.italic),
              ),
            ),

             Container(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 14,left: 13),
                   child: Text("Choose your subscribtion :",style: Style.t_400_18w,),
                 ),
                 Flexible(child: ListView(
                   physics: const NeverScrollableScrollPhysics(),
                   children: [
                   _itemType(w, title: "1 Month", type: "choose",price: "9"),
                   _itemType(w, title: "3 Month", type: "withHeader",price: "24",header: "Popular"),
                   _itemType(w, title: "1 Month", type: "nonChoose",price: "9"),

                 ],))
               ],),
               margin: const EdgeInsets.symmetric(horizontal: 14,vertical: 27),
               decoration: BoxDecoration(color: Style.glassBlackHalf,borderRadius: BorderRadius.circular(16)),height: 380,),


             Padding(
          padding: const EdgeInsets.only(left: 27,bottom: 50),
          child: ElevatedButton(

            onPressed:() => print(""), child:
          Text("Go to Cart",style: Style.t_500_18a4,) ,style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 41,vertical: 17)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: const BorderSide(color: Style.accentGold)
                  )
              ),
              backgroundColor:MaterialStateProperty.all(Style.accentGold)),),
        )

          ],
        ),
      ),

    );
  }



  _itemType(w,{required title,required type,required price, header}) {
     switch(type){
       case "choose":
         return Padding(
           padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
           child: Container(
               padding: EdgeInsets.only(left: 16),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 16),
                         child: SvgPicture.asset(
                           Cicon.radiochecked,
                           width: 24,
                           height: 23,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: Text(title,
                             style: Style.t_500_18_back),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 32),
                     child: Text("$price \$",
                         style: Style.t_500_18_back),
                   )
                 ],
               ),
               width: w,
               height: 56,
               decoration: BoxDecoration(
                   color: Style.accentGold,
                   borderRadius: BorderRadius.circular(16))),
         );
       case "withHeader":
         return Padding(
           padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
           child: Stack(
             alignment: Alignment.bottomLeft,
             children: [
             Container(
               alignment: Alignment.topCenter,
               child: Text(header,style: Style.t_500_12_g48_i,),
               width: 117,
               decoration: BoxDecoration(color: Style.cream,  border: Border.all(color: Style.cream,width: 2),
                 borderRadius: BorderRadius.circular(16)),height: 77,),
             Container(
                 padding: EdgeInsets.only(left: 16),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 16),
                           child: SvgPicture.asset(
                             Cicon.radiounchecedtrans,
                             width: 24,
                             height: 23,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text(title,
                               style: Style.t_500_18w),
                         ),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 32),
                       child: Text("$price \$",
                           style: Style.t_500_18w),
                     )
                   ],
                 ),
                 width: w,
                 height: 56,
                 decoration: BoxDecoration(
                     border: Border.all(color: Style.cream,width: 1),
                     color: Style.gray5C,
                     borderRadius: BorderRadius.circular(16)))
           ],),
         );
       case "nonChoose":
         return Padding(
           padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
           child: Container(
               padding: EdgeInsets.only(left: 16),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 16),
                         child: SvgPicture.asset(
                           Cicon.radiounchecedtrans,
                           width: 24,
                           height: 23,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: Text(title,
                             style: Style.t_500_18w),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 32),
                     child: Text("$price \$",
                         style: Style.t_500_18w),
                   )
                 ],
               ),
               width: w,
               height: 56,
               decoration: BoxDecoration(
                   border: Border.all(color: Style.cream,width: 2),
                   color: Style.gray5C,
                   borderRadius: BorderRadius.circular(16))),
         );
    };
  }





}

