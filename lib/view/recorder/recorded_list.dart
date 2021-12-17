import 'dart:math';

import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_slider/music_slider.dart';


class RecordedList extends StatefulWidget {
  const RecordedList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RecordedListState();
  }
}

class RecordedListState extends State<RecordedList> {

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
    //  double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Padding(
        padding: const EdgeInsets.only(top: 28),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return playlistItem();
          },
        ),
      ),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child:  Row(
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
          Row(
            children: [
              SvgPicture.asset(svgPath+"playlistsample.svg",  ),

              Padding(
                padding: const EdgeInsets.only(left: 16),
                child:
                Text("Recorded List", style: _textTheme.headline1),
              ),
            ],
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }

  playlistItem() {
    return Slidable(
        endActionPane: ActionPane(

          // A motion is a widget used to control how the pane animates.
          motion:  const ScrollMotion(),


          // All actions are defined in the children parameter.
          children:  [
            Row(children: [
              _47Buttons(buttonName: "delete"),
              _47Buttons(buttonName: "share"),
              InkWell(child: _47Buttons(buttonName: "modify"),onTap: () => _showSaveDialog(),),
            ],)
          ],
        ),
        child: Container(
          height: 74,
          margin: const EdgeInsets.only(top: 8,left: 14,right: 14),
          decoration: BoxDecoration(color:Style.gray2F,borderRadius: BorderRadius.circular(12)),
          child: Row(children: [
            Container (
                margin: const EdgeInsets.only(left: 14,right: 17),
                padding: const EdgeInsets.all(18),
                width: 57,
                height: 57,
                child: SvgPicture.asset(
                  svgPath + "play.svg",
                  width: 17,
                  height: 17,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: Style.white20,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12))),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 9,top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("10-16-2021-12-36-24.acc",style: Style.t_400_14w,),
                      Text("00 : 53 : 12",style: Style.t_300_10g9D,),
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16,),
                  child: MusicSlider(
                    emptyColors:  const [Style.gray90],
                    fillColors: const [Style.accentGold],
                    controller: MusicSliderController(initialValue: 0.5),
                    animateWaveByTime: false,
                    height: 18  ,
                    width: 220,
                    division: 65,
                    wave: (x, t, a) => a * cos(x * 0.80) * sin(x * 0.30),
                  ),
                )
              ],
            )),
            Container(
              height: 62,
              width: 26,
              margin: const EdgeInsets.only(left: 7,right: 4),

              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(color: Style.grayC3_half,borderRadius: BorderRadius.circular(12)),
              child: SvgPicture.asset(
                  svgPath + "arrow_left.svg",
                  width: 12,
                  height: 6),
            )
          ],),
        ));
  }


  _47Buttons({required String buttonName,var color})
  {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(12),
        width: 47,
        height: 47,
        child: SvgPicture.asset(
          svgPath + "$buttonName.svg",
          width: 17,
          height: 17,
          color: color,
        ),
        decoration: BoxDecoration(
            color: Style.white15,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)));
  }


  _showSaveDialog(){
    return   showDialog(
      useSafeArea: true,

        context: context,
        builder: (_) => AlertDialog(

          insetPadding: const EdgeInsets.symmetric(vertical: 210),

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          titlePadding: const EdgeInsets.only(top: 7,left: 7),
          backgroundColor: Style.background,
          title: Padding(
            padding:  const EdgeInsets.only(top: 0, left: 7),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(child: Container(
                  width: 44,
                  height: 44,
                  margin:  const EdgeInsets.only(right: 0),
                  child: const Icon(

                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Style.headerBackBtn,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                ),onTap:() => Navigator.pop(context),),
                Row(
                  children: [
                    SvgPicture.asset(svgPath+"modify.svg",  ),

                    Padding(
                      padding: const EdgeInsets.only(left: 13,right: 0),
                      child:
                      Text("File Details", style: Style.t_400_18w),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 44,
                ),
              ],
            ),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 41,top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rename file:",style: Style.t_400_16w),
                    Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child:Container(height: 55,decoration:  Style.inputBoxDecoration,
                            child: TextField(
                                controller: numberController,
                                textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                                hintText: "10-16-2021-12-36-24.acc",hintStyle: TextStyle(color: Theme.of(context).hintColor),fillColor: Colors.white))

                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Created on:",style: Style.t_400_14w),
                          Text("10-16-2021   12:36 AM",style: Style.t_400_14_grayA1),

                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Bit Rate:",style: Style.t_400_14w),
                          Text("128",style: Style.t_400_14_grayA1),

                        ],),
                    ),
                  ],
                ),
              ),
              Row(children: [
                Expanded(child:  Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: ElevatedButton(

                    onPressed:() => print(""), child:
                  Text("Keep",style: Style.t_500_18a4,) ,style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 41,vertical: 17)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.accentGold)
                          )
                      ),
                      backgroundColor:MaterialStateProperty.all(Style.accentGold)),),
                )),
                Expanded(child:  Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: ElevatedButton(onPressed:() => print(""), child:
                  Text("Open in Editor",style: Style.t_500_18g,) ,style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 2,vertical: 17)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.gray4D)
                          )
                      ),
                      backgroundColor:MaterialStateProperty.all(Style.gray4D)),),
                )),
              ],)
            ],
          ),
        )
    );
  }

}
