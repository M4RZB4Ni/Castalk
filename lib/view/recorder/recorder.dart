import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Recorder extends StatefulWidget {
  const Recorder({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RecorderState();
  }
}

class RecorderState extends State<Recorder> {
  String svgPath = "assets/icons/";

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "10-16-2021-12-36-24.acc",
            style: Style.t_500_18_5c,
          ),
          Container(
            width: 170,
            height: 170,
            padding: EdgeInsets.all(30),
            child: SvgPicture.asset(svgPath + "balllistener.svg",
                width: 109, height: 109),
            decoration: BoxDecoration(
                color: Style.gray32,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(38)),
          ),
          Text(
            "00 : 00 : 00 : 000",
            style: Style.t_500_24w,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Style.gray4D,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,bottom: 0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () => debugPrint(""),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      width: 44,
                      height: 44,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Style.redAccent, shape: BoxShape.circle),
                          width: 20,
                          height: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text("Record",style: Style.t_500_18a4,),
                    )
                  ]),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(148,54)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 6,top: 6,bottom: 6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.accentGold))),
                      backgroundColor:
                          MaterialStateProperty.all(Style.accentGold)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 27),
                  width: 54,
                  height: 54,
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset(svgPath+"play.svg"),
                  decoration: BoxDecoration(
                      color: Style.headerBackBtn,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
          )
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
          Text("Recorder", style: Style.t_500_24w),
          Container(
            width: 44,
            height: 44,
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              svgPath + "playlistsample.svg",
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
