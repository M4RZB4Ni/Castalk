import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SetPlan extends StatefulWidget{
  const SetPlan({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SetPlanState();
  }


}


class SetPlanState extends State<SetPlan>{



  bool toYourPlaylist = false;
  bool newPlayList = false;
  TextEditingController numberController = TextEditingController();
  String svgPath = "assets/icons/";


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, top: 35, right: 23),
        child: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name of Plan",
                      style: Style.t_500_18w,
                    ),
                    Text(
                      "0 plans selected",
                      style: Style.t_400_18r,
                    ),
                  ],
                ),
                Container(
                    height: 55,
                    margin: const EdgeInsets.only(top: 8,bottom: 36),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        border: Border.all(width: 1, color: const Color(0xff484848))),
                    width: w,
                    child: TextField(
                        controller: numberController,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: false,
                            contentPadding:
                            const EdgeInsets.only(top: 12, bottom: 12, left: 19),
                            hintText: "Name of plan",
                            hintStyle: TextStyle(color: Theme.of(context).hintColor),
                            fillColor: Colors.white))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 180),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Activate",
                        style: Style.t_400_14_grayA1,
                      ),
                      Text(
                        "Tap on plans to edit them",
                        style: Style.t_400_14_grayA1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ExpandablePanel(
                          theme: const ExpandableThemeData(hasIcon: false),
                          header: expandedHeaderToYourPlaylist(w,title: "1 Month",price: "9"),
                          collapsed: Container(),
                          expanded: playlistItem(w, h)),
                      ExpandablePanel(
                          theme: const ExpandableThemeData(hasIcon: false),
                          header: expandedHeaderToYourPlaylist(w,title: "3 Month",price: "9"),
                          collapsed: Container(),
                          expanded: playlistItem(w, h)),
                      ExpandablePanel(
                          theme: const ExpandableThemeData(hasIcon: false),
                          header: expandedHeaderToYourPlaylist(w,title: "6 Month",price: "9"),
                          collapsed: Container(),
                          expanded: playlistItem(w, h)),
                      ExpandablePanel(
                          theme: const ExpandableThemeData(hasIcon: false),
                          header: expandedHeaderToYourPlaylist(w,title: "A Year",price: "9"),
                          collapsed: Container(),
                          expanded: playlistItem(w, h)),
                    ],
                  ),
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => print(""),
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Color(0xff283034)),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 17, horizontal: 58)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                side: const BorderSide(color: Color(0xffFFB800)))),
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xffFFB800)),
                        textStyle: MaterialStateProperty.all(const TextStyle(
                            color: Color(0xff283034),
                            fontSize: 18,
                            fontWeight: FontWeight.w500))),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.all(12),
                      width: 54,
                      height: 54,
                      child: SvgPicture.asset(
                        Cicon.delete,
                        width: 17,
                        height: 17,
                        color: Style.redAccent,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Style.redAccent),
                          color: Colors.transparent,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)))
                ],
              ),
            )
          ],
        ))
    ));
  }
//        padding: const EdgeInsets.only(left: 24, top: 35, right: 23),+
  newPlaylist(w, h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Playlist Name:",
          style: Style.t_400_16w,
        ),

      ],
    );
  }


  playlistItem(w, h) {
    return Container(

        height: 55,
        margin: const EdgeInsets.only(top: 8,bottom: 36,left: 60),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(width: 1, color: const Color(0xff484848))),
        width: w,
        child: TextField(
            controller: numberController,
            textAlign: TextAlign.left,
            maxLines: 1,
            decoration: InputDecoration(
              prefixText: "Price ",
                suffixText: "\$   ",
                suffixStyle:  Style.t_500_18w,
                prefixStyle: Style.t_400_16w,
                border: InputBorder.none,
                isDense: false,
                contentPadding:
                const EdgeInsets.only(top: 12, bottom: 12, left: 19),
                hintText: "9",
                hintStyle: Style.t_500_18w,
                fillColor: Colors.white)));
  }




  expandedHeaderToYourPlaylist(w,{required String title,required String price}) {
    return toYourPlaylist
        ? Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(right: 11),
            decoration: BoxDecoration(
                color: Style.accentGold,
                borderRadius: BorderRadius.circular(16)),
            width: 52,
            height: 52,
            child: SvgPicture.asset(Cicon.radiochecked,
              width: 24,
              height: 23,
            ),
          ),
          Expanded(child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(title,
                        style: Style.t_500_18_back),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text("$price \$",
                        style: Style.t_500_18_back),
                  ),
                ],
              ),
              height: 56,
              decoration: BoxDecoration(
                  color: Style.accentGold,
                  borderRadius: BorderRadius.circular(16)))),
        ],
      ),
    )
        : Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(right: 11),
            decoration: BoxDecoration(
                color: Style.gray5C,
                borderRadius: BorderRadius.circular(16)),
            width: 52,
            height: 52,
            child: SvgPicture.asset(Cicon.radiounchecedtrans,
              width: 24,
              height: 23,
            ),
          ),
          Expanded(child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(title,
                        style: Style.t_500_18w),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text("--",
                        style: Style.t_500_18w),
                  ),
                ],
              ),
              height: 56,
              decoration: BoxDecoration(
                  color: Style.gray5C,
                  borderRadius: BorderRadius.circular(16)))),
        ],
      ),
    );
  }


  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
          Text("Plan", style: Style.t_500_24w),
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              Cicon.question_mark,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),

        ],
      ),
    );
  }
}