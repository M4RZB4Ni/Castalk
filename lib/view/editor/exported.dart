import 'dart:async';
import 'dart:math';

import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_slider/audio_slider.dart';
//import 'package:music_slider/music_slider.dart';


class Exported extends StatefulWidget {
  const Exported({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ExportedState();
  }
}

class ExportedState extends State<Exported> {

  Timer? timer;
  List<double> valueData = <double>[];
  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 400), (timer) {
      valueData.add(20+Random().nextInt(5).toDouble());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
    //  double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
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
                Text("Exported", style: _textTheme.headline1),
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
          motion:  ScrollMotion(),


          // All actions are defined in the children parameter.
          children:  [
           Row(children: [
                _47Buttons(buttonName: "delete"),
                _47Buttons(buttonName: "share"),
                _47Buttons(buttonName: "modify"),
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
                      child: CopyXiaoMiSliderWidget(
                        datas: valueData,
                        isPlayer: true,
                        duration: const Duration(milliseconds: 333),
                      ),
                      // MusicSlider(
                      //   emptyColors:  [Style.gray90],
                      //   fillColors: [Style.accentGold],
                      //   controller: MusicSliderController(initialValue: 0.5),
                      //   animateWaveByTime: false,
                      //   height: 18  ,
                      //   width: 220,
                      //   division: 65,
                      //   wave: (x, t, a) => a * cos(x * 0.80) * sin(x * 0.30),
                      // ),
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

}
