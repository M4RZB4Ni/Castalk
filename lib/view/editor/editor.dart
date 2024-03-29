import 'dart:math';

import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:music_slider/music_slider.dart';
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
  TextEditingController numberController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      endDrawer: Drawer(
        child:  Container(
          color: Style.background,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36,left: 44),
                  child: Text("Sound Fx",style: Style.t_500_24w,),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24,right: 33),
                    child:InkWell(child: _44Buttons(buttonName: "arrow_fish_left"),onTap: () {
                       Navigator.pop(context);
                    },)),

              ],),
              Container(
                margin: const EdgeInsets.only(top: 19,left: 33,right: 33),
                  height: 44,
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                          width: 1, color: const Color(0xff484848))),
                  child: Row(
                    children: [
                      // i must add sort section with state provider
                      Expanded(
                          flex: 3,
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
                        child: SvgPicture.asset(svgPath+"search.svg",width: 14,height: 14,color: Style.accentGold,),
                        decoration: BoxDecoration(
                            color: Style.background,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ],
                  )),
              SizedBox(
                width: w,
                height: h/2,
                child: ListView(
                  shrinkWrap: true,
                  children: [

                    _drawerItem(w)
                  ],

                ),
              )
            ],
          ),
        )),
      backgroundColor: Style.background,
      appBar: PreferredSize(child: _header(w, h,_scaffoldKey), preferredSize: Size(w,100)),
      body: Stack(
        children: [

          SizedBox(
            height: h/2,
            child: Padding(
              padding: const EdgeInsets.only(left: 78),
              child: RulerWidget(

              /*  limit: 24,
                interval: 5,*/
                scaleBackgroundColor: Style.background, barsColor:  Colors.grey, height: 100, largeScaleBarsInterval: 100, smallScaleBarsInterval: 100,
              ),
            ),
          ),

          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 7),child: _44Buttons(buttonName: "soundon")),
                     const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 7),
                       child: SizedBox(height: 33,child: VerticalDivider(width: 3,color: Colors.white,thickness: 3,)),
                     ),
                    _newSoundContainer(Style.redAccent,true)

                  ],
                ),
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 7),child: _44Buttons(buttonName: "soundon")),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: SizedBox(height: 33,child: VerticalDivider(width: 3,color: Style.gray38,thickness: 3,)),
                    ),
                    _newSoundContainer(Style.purple,true)

                  ],
                ),
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 7),child: _44Buttons(buttonName: "soundoff")),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: SizedBox(height: 33,child: VerticalDivider(width: 3,color: Style.gray38,thickness: 3,)),
                    ),
                    _newSoundContainer(Style.gray38,true)

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: SvgPicture.asset(svgPath+"prevleft.svg",color: Style.grayA),
                    ),
                    SvgPicture.asset(svgPath+"prevsound.svg",color: Style.grayA),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 44),
                        child: _44Buttons(buttonName: "pausegold")),
                    SvgPicture.asset(svgPath+"nextsound.svg",color: Style.grayA),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: SvgPicture.asset(svgPath+"nextright.svg",color: Style.grayA),
                    ),

                  ],),
                )
            ],),
              )),
        ],),


    );
  }


  _newSoundContainer(var color,bool isSelected)
  {
    return Container(
      padding: EdgeInsets.all(8),
        child: Stack(children: [
          MusicSlider(
            emptyColors:  [Colors.white.withOpacity(0.2)],
            fillColors: [Colors.white.withOpacity(0.2)],
            controller: MusicSliderController(initialValue: 0.5),
            animateWaveByTime: false,
            height: 50,
            division: 53,

            wave: (x, t, a) => a * cos(x * 0.50) * sin(x * 0.23),
          ),

          Text("Host Voc - 001 .aac",style: Style.t_500_10w,)
        ],),
        width: 200,height: 35,decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(12),border: isSelected ? Border.all(color: Colors.white,width: 2) : null));
  }



  _header(w,h,_scaffoldKey){
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
               InkWell(child:  _44Buttons(buttonName:"save"),
               onTap: () => _showSaveDialog(),
               ),
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
              InkWell(child: _44Buttons(buttonName:"sfx"),onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },),
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

_showSaveDialog(){
    return   showDialog(
        context: context,
        builder: (_) => ClipRRect(child:   AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          titlePadding: EdgeInsets.only(top: 7,left: 7),
          backgroundColor: Style.background,
          title: Padding(
            padding:  EdgeInsets.only(top: 0, left: 7),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(child: Container(
                  width: 44,
                  height: 44,
                  margin:  EdgeInsets.only(right: 79),
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
                      padding: const EdgeInsets.only(left: 13,right: 100),
                      child:
                      Text("Save Project", style: Style.t_400_18w),
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
                padding: const EdgeInsets.only(bottom: 41,top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Project Name:",style: Style.t_400_16w),
                    Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child:Container(height: 55,decoration:  Style.inputBoxDecoration,
                            child: TextField(
                                controller: numberController,
                                textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                                hintText: "Project X",hintStyle: TextStyle(color: Theme.of(context).hintColor),fillColor: Colors.white))

                        )),
                  ],
                ),
              ),
               Row(children: [
                 Expanded(child:  Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: ElevatedButton(

                     onPressed:() => print(""), child:
                   Text("Save",style: Style.t_500_18a4,) ,style: ButtonStyle(
                       padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 41,vertical: 17)),
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
              Text("Cancel",style: Style.t_500_18w,) ,style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 41,vertical: 17)),
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
        ),borderRadius: BorderRadius.circular(16),)
    );
}

  _drawerItem(w)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(children: [
        _44Buttons(buttonName: "play",color: Colors.white),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Rain Sound.fx",style: Style.t_500_14w,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7,top: 4),
            child: SizedBox(
              height: 14,
              width: w*0.20,
              child: MusicSlider(
                emptyColors:  [Style.gray90],
                fillColors: [Style.accentGold],
                controller: MusicSliderController(initialValue: 0.5),
                animateWaveByTime: false,
                height: 14,
                division: 53,
                wave: (x, t, a) => a * cos(x * 0.50) * sin(x * 0.23),
              ),
            ),
          ),
        ],)
      ],),
    );
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}