
import 'package:castalk/cicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

import '../../style.dart';

class EpisodeView extends StatefulWidget{
  const EpisodeView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EpisodeViewState();
  }


}

class EpisodeViewState extends State<EpisodeView>{

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(w, h),
            _episodeNameData(),
            _topTripleButtons(w),
            _aboutSection(),

          ],),
      ),



    );
  }




  _episodeNameData()
  {
    return  Padding(
      padding: const EdgeInsets.only(top: 36,left: 14,right: 24),
      child: Row(
        children: [
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(20),
            child: SvgPicture.asset(svgPath+"play.svg",color: Style.accentGold,),
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
                    Text("Episode Name which is...".length > 20 ? "Episode Name which is...".substring(0,18)+"..." : "Episode Name which is...",style: Style.t_500_22w),
                    SvgPicture.asset(svgPath+"lock.svg")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Episode Name which is...".length > 20 ? "Episode Name which is...".substring(0,18)+"..." : "Episode Name which is...",style:Style.t_500_18g,),


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
        padding: const EdgeInsets.only(top: 9,right: 24,left: 24),
        child: ReadMoreText(
          'In this Episode we will talk about lorem ipsum. you may sd heard of it before but let’s take a new look at it you may as In this Episode we will talk about lorem ipsum. you maya a heard of it before but let’s take a new look at it In thi zcefg Episode we will talk about lorem ipsum. you may you may heard of it before but let’s take a new look at it...',
          trimLines: 5,
          style: Style.t_400_14_9d,
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
      padding: const EdgeInsets.only(right: 14, left: 14, top: 40, bottom: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => debugPrint(""),
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
              onPressed: () => debugPrint(""),
              child: SvgPicture.asset(Cicon.addlist),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side:  const BorderSide(color: Style.gray29))),
                  minimumSize: MaterialStateProperty.all(const Size(54, 54)),
                  backgroundColor: MaterialStateProperty.all(Style.gray29)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
              onPressed: () => debugPrint(""),
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
            onPressed: () => debugPrint(""),
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



  _header(w,h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Container(
              width: 274,
              height: 274,
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                  image: const DecorationImage(image: NetworkImage("https://picsum.photos/414/414"),fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
        ),

      ],
    );
  }



}