import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../style.dart';

class MyCastsAnalytics extends StatefulWidget{
  const MyCastsAnalytics({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyCastsAnalyticsState();
  }


}

class MyCastsAnalyticsState extends State<MyCastsAnalytics>{

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _textTheme = Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(child:
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 35,bottom: 30,right: 25,left: 25),
              child: Container(
                  padding: const EdgeInsets.all(38),
                  height: 130,width: w,decoration:  Style.inputBoxDecoration.copyWith(borderRadius: const BorderRadius.all(Radius.circular(24))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("12K",style: Style.t_500_18w),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Listens",style: Style.t_500_14_G9D),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("12K",style: Style.t_500_18w),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Followers",style: Style.t_500_14_G9D),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("12K",style: Style.t_500_18w),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Posts",style: Style.t_500_14_G9D),
                          ),
                        ],
                      )
                    ],)
              ),
            ),
          ],)
        ,),

    );
  }




}


