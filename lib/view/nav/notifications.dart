import 'package:blur/blur.dart';
import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Notifications extends GetView<Notifications>{

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(Get.width, 120), child: header(Get.width)),
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18,left: 25),
                    child: Text("NEW:",style: Style.t_500_14g)),
                    _followingItem(Get.width, Get.width),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18,left: 25),
                    child: Text("Today",style: Style.t_500_14w),
                  ),
                  _newReleaseItem(Get.width, Get.height),
                  _subsribersItem(Get.width, Get.height),
                  _congrasItem(Get.width, Get.height),
                  _groupFollower(Get.width, Get.height),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _followingItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 73,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 14,top: 8,bottom: 8),
            child: Container(
              height: 57,
              width: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/57/57'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text("Amir Mehranfar".length > 30 ? "Amir Mehranfar".substring(0,30)+"..." : "Amir Mehranfar",style: Style.t_400_14g),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,),
                  child: Text("is Following you",style: Style.t_400_12w,),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 9,right: 9),
                  child:  Text("Today 8:48",style: Style.t_300_10g9D,),
                )),
              ],
            ),
          )),
        ],),),
    );
  }


  _newReleaseItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.background,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 74,
        child:Blur(
          borderRadius: BorderRadius.circular(16),
          blurColor: Style.background.withOpacity(0.5),
          blur: 0.2,
          colorOpacity: 0.3,
          child: Stack(children: [

            Stack(
              children: [
                Container(
                  width: 126,
                  height: 74,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(17)),

                    image: DecorationImage(
                      image: NetworkImage(
                          'https://picsum.photos/126/47'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(child: Align(
                    alignment: Alignment.centerRight,
                    child:  Container(
                      width: 73,
                      height: 74,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight:  Radius.circular(16)),
                        gradient: LinearGradient(
                          tileMode: TileMode.clamp,
                          colors: [
                            Colors.transparent,
                            Style.background,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.center,
                          stops: [0, 0.8],
                        ),
                      ),
                    ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Row(
                      children: [
                        SvgPicture.asset(svgPath+"micdouble.svg",width: 8,height: 14,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("New Release",style: Style.t_400_14g),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,),
                    child: Text("Elton John Released new Episode".length>35 ? "Elton John Released new Episode".substring(0,30)+"..." : "Elton John Released new Episode",style: Style.t_400_12w,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,bottom: 9,right: 9),
                    child:  Text("Today 8:48",style: Style.t_300_10g9D,),
                  ),
                ],
              ),
            ),

            Align(
                alignment: Alignment.centerRight,child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(svgPath+"play.svg",color: Style.accentGold,),
                decoration: BoxDecoration(
                    color: Style.gray38,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ))

          ],),),
      ));
  }


  _subsribersItem(w,h)
  {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Style.background,
            borderRadius: BorderRadius.circular(16),
          ),
          width: w,
          height: 74,
          child:Blur(
            borderRadius: BorderRadius.circular(16),
            blurColor: Style.background.withOpacity(0.5),
            blur: 0.2,
            colorOpacity: 0.3,
            child: Stack(children: [

              Padding(
                padding: const EdgeInsets.only(left: 21,top: 14),
                child: SvgPicture.asset(svgPath+"dollarsign.svg"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,left: 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Text("You Got 5 new Subscribers",style: Style.t_400_14g),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,),
                      child: Text("Hesam and 4 others subscribed to yo...".length>35 ? "Hesam and 4 others subscribed to yo...".substring(0,30)+"..." : "Hesam and 4 others subscribed to yo...",style: Style.t_400_12w,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7,bottom: 9,right: 9),
                      child:  Text("Today 8:48",style: Style.t_300_10g9D,),
                    ),
                  ],
                ),
              ),

              Align(
                  alignment: Alignment.centerRight,child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  width: 44,
                  height: 44,
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(svgPath+"arrow_fish_right.svg"),
                  decoration: BoxDecoration(
                      color: Style.gray38,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ))

            ],),),
        ));
  }


  _congrasItem(w,h)
  {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Style.background,
            borderRadius: BorderRadius.circular(16),
          ),
          width: w,
          height: 94,
          child:Blur(
            borderRadius: BorderRadius.circular(16),
            blurColor: Style.background.withOpacity(0.5),
            blur: 0.2,
            colorOpacity: 0.3,
            child: Stack(children: [

              Stack(
                children: [
                  Container(
                    width: 252,
                    height: 94,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(17)),

                      image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/252/94'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(child: Align(
                      alignment: Alignment.centerRight,
                      child:  Container(
                        width: 160,
                        height: 94,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight:  Radius.circular(16)),
                          gradient: LinearGradient(
                            tileMode: TileMode.clamp,
                            colors: [
                              Colors.transparent,
                              Style.background,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.center,
                            stops: [0, 0.8],
                          ),
                        ),
                      ))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Center(child: Text("Congras!",style: Style.t_700_24g)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,),
                      child: Center(child: Text("Your Podcast hits 100k Followers in Castalk\n Share it with your audince",style: Style.t_400_12w,maxLines: 2,textAlign: TextAlign.center,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child:  Center(child: Text("Today 8:48",style: Style.t_300_10g9D,)),
                    ),
                  ],
                ),
              ),

              Align(
                  alignment: Alignment.centerRight,child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  width: 44,
                  height: 44,
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(Cicon.share,color: Style.gray58,),
                  decoration: BoxDecoration(
                    border: Border.all(color: Style.gray48),
                      color: Style.background,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ))

            ],),),
        ));
  }



  _groupFollower(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.background,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 50,
        child: Row(children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/44/44'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7,bottom: 8),
                child: Blur(
                    borderRadius: BorderRadius.circular(12),
                    blurColor: Style.whiteHalf,
                    colorOpacity: 0.6,
                    blur: 0.6,
                    child: Container(
                      height: 47,
                      width: 47,
                      decoration:const BoxDecoration(
                        image:  DecorationImage(
                          image: NetworkImage('https://picsum.photos/47/47'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7,bottom: 8),
                child: Center(child: Text("+5",style: Style.t_700_14b,)),
              )
            ],),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text:"Amir Mehranfar ",style: Style.t_400_12g),
                        TextSpan(text:"and ",style: Style.t_400_12w),
                        TextSpan(text:"5 others ",style: Style.t_400_12g),
                        TextSpan(text:"are following you ",style: Style.t_400_12w),
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 0,right: 9),
                  child:  Text("Today 8:48",style: Style.t_300_10g9D,),
                ),
              ],
            ),
          )),
        ],),),
    );
  }





  header(w) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 29,top: 45),
              child: Text("Activity", style:Style.t_500_24w),
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 23,right: 23,left: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                          width: 1, color: const Color(0xff484848))),
                  width: w / 2,
                  child: TextField(
                      controller: numberController,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: false,
                          contentPadding: const EdgeInsets.only(
                              top: 12, bottom: 12, left: 19),
                          hintText: "Type to Search...",
                          hintStyle:
                          TextStyle(color: Get.theme.hintColor),
                          fillColor: Colors.white))),
              Container(
                padding: const EdgeInsets.all(12),

                width: 44,
                height: 44,
                child: SvgPicture.asset(svgPath+"arrow_up.svg",width: 14,height: 14,),
                decoration: BoxDecoration(
                    color: Style.headerBackBtn,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(svgPath+"filter.svg",width: 14,height: 14,),
                decoration: BoxDecoration(
                    color: Style.glassBlack,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: 44,
                height: 44,
                child: SvgPicture.asset(svgPath+"sort.svg",width: 14,height: 14,),
                decoration: BoxDecoration(
                    color: Style.glassBlack,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              )
            ],
          ),
        )
      ],
    );
  }





}

