import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:rulers/rulers.dart';

class Editor extends StatefulWidget{
  const Editor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EditorState();
  }


}

class EditorState extends State<Editor>{

  String svgPath = "assets/icons/";


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(child: _header(w, h), preferredSize: Size(w,122)),
      body: Column(children: [
        Row(children: [
          Column(children: [
            Padding(padding: const EdgeInsets.only(top: 7),child: _44Buttons(buttonName: "soundon")),
            Padding(padding: const EdgeInsets.only(top: 7),child:_44Buttons(buttonName: "soundon")),
            Padding(padding: const EdgeInsets.only(top: 7),child:_44Buttons(buttonName: "soundoff")),
          ],),

          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: RulerWidget(
              scaleSize: 100,
              scaleColor: Style.background,
              indicatorWidget: Text(''),
              limit: 24,
              interval: 3,
              lowerLimit: 2,
              midLimitLower: 4,
              midLimitUpper: 7,
              upperLimit: 8,
              normalBarColor: Colors.grey,
              inRangeBarColor: Colors.green,
              behindRangeBarColor: Colors.orangeAccent,
              outRangeBarColor: Colors.red,
            ),
          ),
        ],)
      ],),


    );
  }

  _header(w,h){
    return Row(
      mainAxisSize: MainAxisSize.max,

      children: [
        Expanded(child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 24,left: 31),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                _44Buttons(buttonName:"arrow_fish_left"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Column(children: [
                    Text("selected layer:",style: Style.t_400_14w,),
                    Text("Host Voc - 001 .aac",style: Style.t_500_10_9d,),
                  ],),
                ),
                _44Buttons(buttonName:"delete",color: Style.grayA),
                _44Buttons(buttonName:"info"),
                _44Buttons(buttonName:"doc"),
                _44Buttons(buttonName:"copy"),
              ],),

              Row(children: [
                _44Buttons(buttonName:"turn_left"),
                _44Buttons(buttonName:"turn_right"),

                _44Buttons(buttonName:"add"),
                _44Buttons(buttonName:"dotlist"),
                _44Buttons(buttonName:"save"),
                _44Buttons(buttonName:"upload",color: Style.grayA),

              ],)
            ],),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               margin: const EdgeInsets.only(top: 9,left: 31),
               width: w/2.3,
                height: 44,
               decoration: BoxDecoration(color: Style.gray38,borderRadius: BorderRadius.circular(12)),
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 9,right: 26,left: 26),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("00 : 00 : 03 : 001",style: Style.t_500_14g,),
                         Text("00 : 00 : 03 : 001",style: Style.t_500_14_G9D,),
                       ],),
                   ),
                   SizedBox(
                     height: 15,
                     child: SliderTheme(

                         data: const SliderThemeData(trackHeight: 5,thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8,elevation: 10)), child: Slider(
                         thumbColor: Style.halfGold,
                         activeColor: Style.accentGold,
                         inactiveColor: Style.gray58,
                         value: 20, onChanged: (value) {

                     },min: 0,max: 100)),
                   ),
                 ],
               ),
             ),


            Row(children: [
              _44Buttons(buttonName:"cut"),
              _44Buttons(buttonName:"mosl"),
              _44Buttons(buttonName:"mosr"),
              _44Buttons(buttonName:"sfx"),
            ],)

           ],
         )
        ],)),
        Container(width: 44,height: 97,decoration: BoxDecoration(color: Style.gray38,borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Column(
              children:  [
          SizedBox(
            width: 7,
            height: 60,
            child: ClipRRect(child: const GradientProgressIndicator(
              gradient: LinearGradient(
                colors: [
              Color(0xff5CBD3A),
              Color(0xffFFB800),
            ]),
              value: 1,
            ),borderRadius: BorderRadius.circular(8),),
          ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("R",style: Style.t_500_10_9d,),
                )
            ],),
            Column(
              children:  [
                SizedBox(
                  width: 7,
                  height: 60,
                  child: ClipRRect(child: const GradientProgressIndicator(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff5CBD3A),
                          Color(0xffFFB800),
                        ]),
                    value: 1,
                  ),borderRadius: BorderRadius.circular(8),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("L",style: Style.t_500_10_9d,),
                )


              ],)
          ],),
        ),
        )
      ],
    );
  }

  _44Buttons({required String buttonName,var color})
  {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(12),
        width: 44,
        height: 44,
        child: SvgPicture.asset(
          svgPath + "$buttonName.svg",
          width: 17,
          height: 17,
          color: color,
        ),
        decoration: BoxDecoration(
            color: Style.gray80op50,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)));
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}