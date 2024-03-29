import 'dart:ui';

import 'package:castalk/cicon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';
import '../../style.dart';

class PodcastView extends StatefulWidget {
  const PodcastView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PodcastViewState();
  }
}

class PodcastViewState extends State<PodcastView> {
  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();
  late TextTheme _textTheme;
  bool isFollow=false;

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Style.background,
      //appBar: PreferredSize(preferredSize: Size(w, h/2), child: header(w,h)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            header(w, h),
            _podcastNameData(),

            _topTripleButtons(w),
            _aboutSection(),
            _searchBar(w),
            Flexible(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    _likedItem(w, h),
                    _likedItem(w, h),
                    _likedItem(w, h),
                    _likedItem(w, h),
                    _likedItem(w, h),
                  ],
                ))
          ],),
      ),
    );
  }

  _likedItem(w, h) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                height: 110,
                child: Stack(
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
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14,right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:8),
                          child: Text(
                            "Episode name which is long...".length > 30
                                ? "Episode name which is long...".substring(0, 30) +
                                "..."
                                : "Episode name which is long...",
                            style: _textTheme.headline1!.copyWith(fontSize: 14),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  SvgPicture.asset(svgPath + "timer.svg"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("1 : 26 : 45",
                                        style: _textTheme.headline6),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, right: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(svgPath + "heart_empty.svg"),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text("250",
                                            style: _textTheme.headline6),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Text("2 days ago",
                                        style: _textTheme.headline6),
                                  )
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
                decoration: BoxDecoration(
                    color: Style.gray48op50,
                    borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(svgPath + "arrow_left.svg",
                    width: 12, height: 6),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8, top: 8, right: 12, left: 12),
            child: Divider(
              height: 1,
              color: Style.divider,
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }

  _podcastNameData() {
    return Padding(
      padding: const EdgeInsets.only(top: 31, left: 14, right: 14),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 68,
                height: 68,
                padding: const EdgeInsets.all(20),
                child: SvgPicture.asset(
                  svgPath + "playlist.svg",
                ),
                decoration: BoxDecoration(
                    color: Style.headerBackBtn,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Podcast Name", style: Style.t_700_36w),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: SvgPicture.asset(
                                      svgPath + "micdouble.svg",
                                      color: Style.accentGold,
                                    ),
                                  ),
                                  Text(
                                    "Podcast name",
                                    style: Style.t_500_14g,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child:
                                    SvgPicture.asset(svgPath + "people_group.svg"),
                                  ),
                                  Text(
                                    "250",
                                    style: Style.t_400_12_9D,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child:
                                    SvgPicture.asset(svgPath + "heart_empty.svg"),
                                  ),
                                  Text(
                                    "250",
                                    style: Style.t_400_12_9D,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12 Seasons",style: Style.t_500_14w,),
                Text("128 Episods",style: Style.t_500_14w,),
              ],),
          )
        ],
      ),
    );
  }

  _aboutSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "About:",
                style: Style.t_500_14w,
              ),
              Text(
                "Comedy, Culture:",
                style: Style.t_400_12g,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9, right: 26, left: 26),
          child: ReadMoreText(
            'In this Episode we will talk about lorem ipsum. you may heard of it before but let’s take a new look at it In this Episode we will talk about lorem ipsum. you may heard of it before but let’s take a new look at it...',
            trimLines: 2,
            colorClickableText: Style.accentGold,
            style: Style.t_400_14_9d,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: 'Show less',
            moreStyle: Style.t_400_12g.copyWith(fontStyle: FontStyle.italic),
          ),
        )
      ],
    );
  }
  _topTripleButtons(w) {
    return Padding(
      padding: const EdgeInsets.only(right: 14, left: 14, top: 40, bottom: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => print(""),
            child: const Text(
              "Buy for 17\$",
              style: TextStyle(color: Color(0xff283034)),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: const BorderSide(color: Color(0xffFFB800)))),
                fixedSize: MaterialStateProperty.all(Size(w*0.40, 54)),
                backgroundColor:
                MaterialStateProperty.all(const Color(0xffFFB800)),
                textStyle: MaterialStateProperty.all(const TextStyle(
                    color: Color(0xff283034),
                    fontSize: 18,
                    fontWeight: FontWeight.w500))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: ElevatedButton(
              onPressed: () => print(""),
              child: SvgPicture.asset(Cicon.addlist),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side:  BorderSide(color: Style.glassBlack))),
                  minimumSize: MaterialStateProperty.all(const Size(54, 54)),
                  backgroundColor: MaterialStateProperty.all(Style.glassBlack)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
              onPressed: () => print(""),
              child: SvgPicture.asset(Cicon.download),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: const BorderSide(color: Style.gray2F))),
                  minimumSize: MaterialStateProperty.all(const Size(54, 54)),
                  backgroundColor: MaterialStateProperty.all(Style.glassBlack)),
            ),
          ),
          ElevatedButton(
            onPressed: () => print(""),
            child: SvgPicture.asset(Cicon.heart_empty,color: Colors.white,width: 21,height: 18,),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: Style.glassBlack))),
                minimumSize: MaterialStateProperty.all(const Size(54, 54)),
                backgroundColor:
                MaterialStateProperty.all(Style.glassBlack)),
          ),
        ],
      ),
    );
  }

  _searchBar(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 33,left:14,right:14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(width: 1, color: const Color(0xff484848))),
              width: w / 2,
              child: TextField(
                  controller: numberController,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: false,
                      contentPadding:
                      const EdgeInsets.only(top: 12, bottom: 12, left: 19),
                      hintText: "Type to Search...",
                      hintStyle: TextStyle(color: Theme.of(context).hintColor),
                      fillColor: Colors.white))),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(
              Cicon.search,
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
              Cicon.filter,
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
              Cicon.sort,
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
    );
  }

  header(w,h) {
    return  Stack(children: [

      Container(
        width: w,
        height: h / 2,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage("https://picsum.photos/414/414"),
                fit: BoxFit.cover),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(40)),
      ),

      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24,left: 24),
            child: Container(
              width: 44,
              height: 44,
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Style.headerBackBtn,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24,right: 24),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 44,
              height: 44,
              child:SvgPicture.asset(svgPath+"info.svg",color: Colors.white,),
              decoration: BoxDecoration(
                  color: Style.headerBackBtn,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ],
      )

    ],);
  }


}
