import 'dart:math';

import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_slider/music_slider.dart';
import 'package:readmore/readmore.dart';

class OtherUserProfile extends StatefulWidget{
  const OtherUserProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return OtherUserProfileState();

  }



}
class OtherUserProfileState extends State<OtherUserProfile>{

  String svgPath="assets/icons/";


  @override
  Widget build(BuildContext context) {


    double w = MediaQuery.of(context).size.width;

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
                child: Container(padding: const EdgeInsets.all(10),width: 44,height: 44,child: SvgPicture.asset(svgPath+"arrow_fish_left.svg",width: 17,height: 17,) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
              ),


              Align(alignment: Alignment.topRight,child: Positioned(
                  child: Padding(
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
                        Text("Followers",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
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
                        Text("Posts",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                        Text("12K",style: Theme.of(context).textTheme.headline1),
                      ],)),
              )



            ],)),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27,bottom: 9),
                  child: Text("About:",style: Style.t_500_14w,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 9,right: 26,left: 26,bottom: 17),
                  child: ReadMoreText(
                    'In this Episode we will talk about lorem ipsum. you may sd heard of it before but let’s take a new look at it you may as In this Episode we will talk about lorem ipsum. you maya a heard of it before but let’s take a new look at it In thi zcefg Episode we will talk about lorem ipsum. you may you may heard of it before but let’s take a new look at it...',
                    trimLines: 5,
                    style: Style.t_400_14_grayA1,
                    colorClickableText: Style.accentGold,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: Style.t_400_12g.copyWith(fontStyle: FontStyle.italic),
                  ),
                ),
                ElevatedButton(onPressed:() => print(""), child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(svgPath+"coin.svg"),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Buy me a Coffee",style: Style.t_500_18w,),
                    ),
                  ],
                ) ,style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(w,58)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Style.gray90)
                        )
                    ),
                    backgroundColor:MaterialStateProperty.all(Style.background)),),

                _playerSection(),
                _checkoutSection(),
                _bottomButtonSection()

              ],
            ),
          ),

    );
  }

  _playerSection()
  {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20,right: 12,left: 12,bottom: 9),
          child: Divider(height: 1,color: Style.divider,thickness: 1,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(25),

                    height: 96,
                    width: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: NetworkImage('https://picsum.photos/96/96'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      width: 77,
                      height: 77,
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        svgPath + "play.svg",
                      ),
                      decoration: BoxDecoration(
                          color: Style.gray32,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ) /* add child content here */,
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Episode name which is long...".length > 30
                              ? "Episode name which is long...".substring(0, 30) + "..."
                              : "Episode name which is long...",
                          style: Style.t_500_14w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: MusicSlider(
                            emptyColors: const [Colors.white],
                            fillColors: const [
                              Style.accentGold,
                            ],
                            controller: MusicSliderController(initialValue: 0.5),
                            animateWaveByTime: false,
                            height: 50,
                            division: 53,

                            wave: (x, t, a) => a * cos(x * 0.32) * sin(x * 0.23),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("1 : 26 : 45",
                              style: Style.t_400_14w),
                        ))
                      ],
                    ),
                  )),

                ],
              ),

            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 9,right: 12,left: 12,bottom: 24),
          child: Divider(height: 1,color: Style.divider,thickness: 1,),
        ),
      ],
    );
  }


  _checkoutSection()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
      Padding(
        padding: const EdgeInsets.only(left: 27,bottom: 19),
        child: Text("Check us out:",style: Style.t_500_14w,),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        SvgPicture.asset(svgPath+"twitter.svg"),
        SvgPicture.asset(svgPath+"spotify.svg"),
        SvgPicture.asset(svgPath+"youtube.svg"),
        SvgPicture.asset(svgPath+"instagram.svg"),
        SvgPicture.asset(svgPath+"soundcloud.svg"),

      ],)
    ],);
  }

  _bottomButtonSection()
  {
    return Row(children: [
      Expanded(child:  Padding(
        padding: const EdgeInsets.only(right: 10,left: 31,top: 39),
        child: ElevatedButton(onPressed:() => print(""), child:
        Text("Follow",style: Style.t_500_18g,) ,style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 41,vertical: 17)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Style.gray4D)
                )
            ),
            backgroundColor:MaterialStateProperty.all(Style.gray4D)),),
      )),


      Expanded(child:  Padding(
        padding: const EdgeInsets.only(right: 31,top: 39),
        child: ElevatedButton(
          
          onPressed:() => print(""), child:
        Text("Subscribe",style: Style.t_500_18a4,) ,style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 41,vertical: 17)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Style.accentGold)
                )
            ),
            backgroundColor:MaterialStateProperty.all(Style.accentGold)),),
      )),
    ],);
  }
}

