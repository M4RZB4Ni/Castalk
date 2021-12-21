import 'dart:math';

import 'package:castalk/cicon.dart';
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

              Align(alignment: Alignment.topRight,child: Padding(
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
              )),

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
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Listens",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                        Text("12K",style: Theme.of(context).textTheme.headline1),
                      ],),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Followers",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                        Text("12K",style: Theme.of(context).textTheme.headline1),
                      ],),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Posts",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                        Text("12K",style: Theme.of(context).textTheme.headline1),
                      ],)

                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27,bottom: 9,top: 36),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(onPressed:() => print(""), child: Row(
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
                ),

                _playerSection(),
                _checkoutSection(),
                _bottomButtonSection(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13,top: 35,left: 26),
                      child: Text("Latest Podcasts:",style: Style.t_500_14g,),
                    ),
                    _LatestPodcastSection(w),

                  ],),

                Padding(
                  padding: const EdgeInsets.only(top: 0,left: 27),
                  child: Text("All Episodes:",style: Style.t_500_14w),
                ),
                _searchBar(w),
                Flexible(child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    _likedItem(w,h),
                    _likedItem(w,h),
                    _likedItem(w,h),
                  ],
                ))
              ],
            ),
          ),

    );
  }

  _likedItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
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
                        Cicon.play,
                      ),
                      decoration: BoxDecoration(
                          color: Style.gray3cop30,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ) /* add child content here */,
                  ),
                ],
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset(Cicon.timer),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("1 : 26 : 45",
                                    style: Style.t_400_12_grayA1),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            children: [
                              SvgPicture.asset(Cicon.heart_empty),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("250",
                                    style:  Style.t_400_12_grayA1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
              Container(
                height: 96,
                width: 44,

                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                    Cicon.arrow_left,
                    width: 12,
                    height: 6),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8,right: 12,left: 12,top: 8),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          )
        ],
      ),
    );

  }


  _searchBar(w)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 14,left: 14,bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 55,
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
                      TextStyle(color: Theme.of(context).hintColor),
                      fillColor: Colors.white))),
          Container(
            padding: const EdgeInsets.all(12),

            width: 44,
            height: 44,
            child: SvgPicture.asset(Cicon.search,width: 14,height: 14,),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(Cicon.filter,width: 14,height: 14,),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(Cicon.sort,width: 14,height: 14,),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          )
        ],
      ),
    );

  }

  _LatestPodcastSection(w)
  {
    return SizedBox(
      width: w,
      height: 220,
      child:

      ListView.builder(
        itemBuilder: (context, index) {
          return  _podcastItem();

        },
        scrollDirection: Axis.horizontal,
      ),

    )
    ;
  }

  _podcastItem(){
    return  Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 122,
            width: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/122/122'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Episode Name and...",style: Style.t_500_14w,),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("Artist and the others",style: Style.t_400_12_gray,),
                ),
              ],
            ),
          ),
        ],
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
                          color: Style.gray3cop30,
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

