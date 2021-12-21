import 'dart:ui';

import 'package:castalk/cicon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

import '../../style.dart';

class SeasonView extends StatefulWidget{
  const SeasonView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SeasonViewState();
  }


}

class SeasonViewState extends State<SeasonView>{

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();
  late TextTheme _textTheme;


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
            _seasonNameData(),
            _topTripleButtons(w),
            _aboutSection(),
            _itemTitle(w),
            Flexible(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    _likedItem(w,h),
                    _likedItem(w,h),
                    _likedItem(w,h),
                    _likedItem(w,h),
                    _likedItem(w,h),
                  ],
                ))
          ],),
      ),



    );
  }


  _likedItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      style: _textTheme.headline1!.copyWith(fontSize: 14),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(svgPath+"timer.svg"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("1 : 26 : 45",
                                        style: _textTheme.headline6),
                                  ),
                                ],
                              ),
                              Text("News",
                                  style:Style.t_400_12g)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(svgPath+"heart_empty.svg"),
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
                decoration: BoxDecoration(color: Style.grayTrans03,borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                    svgPath + "arrow_left.svg",
                    width: 12,
                    height: 6),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8,top: 8,right: 12,left: 12),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          )
        ],
      ),
    );

  }


  _seasonNameData()
  {
    return  Padding(
      padding: const EdgeInsets.only(top: 24,left: 14,right: 24),
      child: Row(
        children: [
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(20),
            child: SvgPicture.asset(svgPath+"playlist.svg",),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(top: 0,left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Season Name which is...".length > 20 ? "Season Name which is...".substring(0,18)+"..." : "Season Name which is...",style: Style.t_500_22w),
                    SvgPicture.asset(svgPath+"lock.svg")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text("Podcast Name which is...".length > 20 ? "Podcast Name which is...".substring(0,18)+"..." : "Podcast Name which is...",style:Style.t_500_18g,),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: SvgPicture.asset(svgPath+"heart_empty.svg"),
                          ),
                          Text("250",style:Style.t_400_12_9D,),
                        ],
                      ),


                    ],
                  ),
                )
              ],
            ),
          ))
        ],),
    );
  }

  _aboutSection()
  {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("About:",style: Style.t_500_14w,),
            Text("Comedy, Culture:",style: Style.t_400_12g,),
          ],),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 9,right: 26,left: 26),
        child: ReadMoreText(
          'In this Episode we will talk about lorem ipsum. you may heard of it before but let’s take a new look at it In this Episode we will talk about lorem ipsum. you may heard of it before but let’s take a new look at it...',
          trimLines: 2,
          style: Style.t_400_14w,
          colorClickableText: Style.accentGold,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Show less',
          moreStyle: Style.t_400_12g.copyWith(fontStyle: FontStyle.italic),
        ),
      )
    ],);
  }

  _topTripleButtons(w) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 14, top: 24, bottom: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 3,
              child: ElevatedButton(
                onPressed: () => print(""),
                child:  const Text(
                  "Buy for 17\$",

                  style: TextStyle(color: Style.gray4D  ),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side:  const BorderSide(color: Style.accentGold))),
                    fixedSize: MaterialStateProperty.all(Size(w, 54)),
                    backgroundColor:
                    MaterialStateProperty.all(Style.accentGold),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                        color: Color(0xff283034),
                        fontSize: 18,
                        fontWeight: FontWeight.w500))),
              )),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ElevatedButton(
                onPressed: () => print(""),
                child: SvgPicture.asset(Cicon.addlist,color: Style.whiteHalf,),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Style.gray2F))),
                    fixedSize: MaterialStateProperty.all(const Size(54, 54)),
                    backgroundColor: MaterialStateProperty.all(Style.glassBlack)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ElevatedButton(
                onPressed: () => print(""),
                child: SvgPicture.asset(Cicon.download,
                    color: Style.whiteHalf),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Style.gray2F))),
                    fixedSize: MaterialStateProperty.all(const Size(54, 54)),
                    backgroundColor: MaterialStateProperty.all(Style.glassBlack)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: () => print(""),
              child: SvgPicture.asset(Cicon.like),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(color: Style.glassBlack))),
                  fixedSize: MaterialStateProperty.all(const Size(54, 54)),
                  backgroundColor:
                  MaterialStateProperty.all(Style.glassBlack)),
            ),
          ),
        ],
      ),
    );
  }

  _itemTitle(w)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 36,right: 29,left: 29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Episodes",style: Style.t_500_14g,),
          Text("12 Episodes",style: Style.t_500_14w,),
        ],
      ),
    );
  }


  header(w,h) {
    return  Stack(children: [

      Container(
        width: w,
        height: 126,
        decoration: BoxDecoration(
            image: const DecorationImage(image: NetworkImage("https://picsum.photos/414/126"),fit: BoxFit.cover),
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