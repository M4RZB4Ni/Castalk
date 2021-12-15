import 'dart:math';

import 'package:blur/blur.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_slider/music_slider.dart';
import 'package:timelines/timelines.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CommentsState();
  }
}

class CommentsState extends State<Comments> {
  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(
          preferredSize: Size(w, 250),
          child: Stack(
            children: [
              Blur(
                blurColor: Colors.black45,
                colorOpacity: 0.5,
                blur: 1,
                child: Container(
                  width: w,
                  height: 156,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage("https://picsum.photos/414/156")),
                      color: const Color(0xff414141),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 24),
                child: Container(
                    padding: const EdgeInsets.all(12),
                    width: 44,
                    height: 44,
                    child: SvgPicture.asset(
                      svgPath + "arrow_fish_left.svg",
                      width: 17,
                      height: 17,
                    ),
                    decoration: BoxDecoration(
                        color: Style.gray80op50,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Podcast Name", style: Style.t_700_18w),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Episode Name which is...",
                          style: Style.t_400_22w),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            svgPath + "mic.svg",
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Podcast Name", style: Style.t_400_14w),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 15),
                child: Align(
                  child: Container(
                    width: 68,
                    height: 68,
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(
                      svgPath + "play.svg",
                      color: Style.accentGold,
                    ),
                    decoration: BoxDecoration(
                        color: Style.headerBackBtn,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 14, left: 14),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: MusicSlider(
                      width: w - 100,
                      emptyColors: const [Colors.white],
                      fillColors: const [
                        Style.accentGold,
                      ],
                      controller: MusicSliderController(initialValue: 0.5),
                      animateWaveByTime: false,
                      height: 50,
                      division: 53,
                      wave: (x, t, a) => a * cos(x * 0.40) * sin(x * 0.50),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, right: 14, left: 100),
                child: Align(
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(text: '12 : 31', style: Style.t_500_14g),
                      TextSpan(text: ' / ', style: Style.t_400_14w),
                      TextSpan(text: '26 : 45', style: Style.t_400_14w),
                    ]),
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              _searchBar(w)
            ],
          )),
      body: Timeline.builder(
        scrollDirection: Axis.horizontal,

        builder: TimelineTileBuilder.connected(
          connectorBuilder: (context, index, type) => const SolidLineConnector(
            color: Colors.white,
            thickness: 1,
          ),
          indicatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "@12:30",
              style: Style.t_400_12g,
            ),
          ),
          contentsAlign: ContentsAlign.basic,
          contentsBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 312,
                  height: 182,
                  decoration: BoxDecoration(
                      color: Style.glassBlack,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -1,
                          blurRadius: 1,
                          offset: Offset(0, -3), // changes position of shadow
                        ),
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14,left: 14),
                      child: Row(children: [
                        Container(
                          width: 30,
                          height: 30,

                          decoration: BoxDecoration(
                              color: Style.headerBackBtn,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("UserName",style: Style.t_500_12w,),
                        )
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                      child: RichText(textAlign: TextAlign.justify,text: TextSpan(style: Style.t_300_12w,text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque gravida nulla lacus tincidunt sed feugiat magna. Magna sit vulputate quisque amet consectetur morbi. Imperdiet eget a neque adipiscing. Vitae, phasellus turpis elementum neque, euismod commodo donec arcu. 😘😚")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12,left: 12,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("2  days ago",style: Style.t_400_12_grayA1,),
                          Row(
                            children: [
                              SvgPicture.asset(svgPath+"heart_empty.svg",color: Colors.white,),
                              Text("122",style: Style.t_300_12w,),
                            ],
                          ),

                        ],),
                    )
                  ],),
                ),
              ),
          itemCount: 10,
        ),
      ),
    );
  }

  _searchBar(w) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 14, left: 14, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border:
                        Border.all(width: 1, color: const Color(0xff484848))),
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
              child: SvgPicture.asset(
                svgPath + "search.svg",
                width: 14,
                height: 14,
              ),
              decoration: BoxDecoration(
                  color: Style.headerBackBtn,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            ),
            Container(
              width: 44,
              height: 44,
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                svgPath + "filter.svg",
                width: 14,
                height: 14,
              ),
              decoration: BoxDecoration(
                  color: Style.glassBlack,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: 44,
              height: 44,
              child: SvgPicture.asset(
                svgPath + "sort.svg",
                width: 14,
                height: 14,
              ),
              decoration: BoxDecoration(
                  color: Style.glassBlack,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            )
          ],
        ),
      ),
      alignment: Alignment.bottomLeft,
    );
  }
}
