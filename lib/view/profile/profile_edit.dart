import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProfileEditState();
  }
}

class ProfileEditState extends State<ProfileEdit> {
  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: SizedBox(
          width: w,
          height: h,
          child: Column(
            children: [
              DottedBorder(
                  color: Style.gray5C,
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(16),
                  child: Center(
                    child: SizedBox(
                      width: w,
                      height: 134,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(svgPath + "upload_image.svg"),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              "Add Cover",
                              style: Style.t_400_13gA,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Row(children: [
               Expanded(
                   flex: 1,
                   child:  DottedBorder(
                    color: Style.gray5C,
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(16),
                    child: Center(
                      child: SizedBox(
                        height: 104,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(svgPath + "upload_image.svg"),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "Add Cover",
                                style: Style.t_400_13gA,
                              ),
                            )
                          ],
                        ),
                      ),
                    ))),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("Upload Your Document:",style: Style.t_400_16w,),
                    ),
                    Container(height: 55,decoration:  Style.inputBoxDecoration,width: w,
                        child: TextField(
                            controller: numberController,
                            textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)
                    )
                  ],
                ),flex: 2,)
              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("Introduction Voice:",style: Style.t_400_16w,),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(svgPath+"upload.svg"),
                        decoration: BoxDecoration(
                            color: Style.accentGold,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      Expanded(flex:12,child:  Padding(
                          padding: const EdgeInsets.only(top: 0,bottom: 9,left: 10),
                          child:Container(height: 55,decoration:  Style.inputBoxDecoration,width: w,
                              child: TextField(
                                  controller: numberController,
                                  textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)

                          )))
                    ],
                  )



                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("About:",style: Style.t_400_16w,),
                  ),
                  Container(height: 196,decoration:  Style.inputBoxDecoration,width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          TextField(
                              controller: numberController,
                              textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration),
                          Container(
                              padding: EdgeInsets.all(12),
                              width: 44,
                            height: 44,
                            child: SvgPicture.asset(svgPath+"modify.svg",width: 17,height: 17,),
                            decoration: BoxDecoration(
                                color: Style.headerBackBtn,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(12)),
                          )
                        ],
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
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
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Text("Request Verify badge", style: _textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }
}
