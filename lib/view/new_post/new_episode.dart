import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tags/flutter_tags.dart';


class NewEpisode extends StatefulWidget {
  const NewEpisode({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NewEpisodeState();
  }
}

class NewEpisodeState extends State<NewEpisode> {

  List<String> cCodes=["This Week","Last Week","Next Week"];
  List _tagsList=["Podcast: Podcast Name","Last Week"];
  late dynamic radioProductValue="Free";
  final GlobalKey<TagsState> _tagStateKey = GlobalKey<TagsState>();

  late String _charDropValue;

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();


  @override
  void initState() {
    _charDropValue= cCodes.first;

  }

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 26,left: 26,top: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                    margin: EdgeInsets.only(top: 29),
                    height: 44,decoration:  Style.dropDownDecoration,width: w,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Theme.of(context).copyWith(
                          canvasColor: Style.background),
                          child: DropdownButton<String>(
                              icon: const Padding(
                                padding: EdgeInsets.only(right: 15,bottom: 0),
                                child: Icon(Icons.keyboard_arrow_down_rounded,size: 28,),
                              ),
                              isDense: false,
                              value: _charDropValue,
                              style: Theme.of(context).textTheme.bodyText2,
                              items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Style.t_400_12w),value: e,)).toList(),
                              onChanged: (value) {
                                setState(() {
                                  // selectedActivity = value;
                                  _charDropValue=value!;
                                  debugPrint('album choose-> $value');


                                });
                              })),
                    )
                )),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: SizedBox(height: 12,child: VerticalDivider(color: Style.gray48,width: 2,thickness: 2,)),
                ),
                Container(
                    margin: EdgeInsets.only(top: 0),
                    height: 44,decoration:  Style.dropDownDecoration,width: w,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Theme.of(context).copyWith(
                          canvasColor: Style.background),
                          child: DropdownButton<String>(
                              icon: const Padding(
                                padding: EdgeInsets.only(right: 15,bottom: 0),
                                child: Icon(Icons.keyboard_arrow_down_rounded,color: Style.accentGold,size: 28,),
                              ),
                              isDense: false,
                              value: _charDropValue,
                              style: Theme.of(context).textTheme.bodyText2,
                              items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Style.t_400_12w),value: e,)).toList(),
                              onChanged: (value) {
                                setState(() {
                                  // selectedActivity = value;
                                  _charDropValue=value!;
                                  debugPrint('album choose-> $value');


                                });
                              })),
                    )
                )),
              ],),

              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: DottedBorder(
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
                            SvgPicture.asset(Cicon.upload_image),
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
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 23,bottom: 10),
                    child: Text("Episode Name:",style: Style.t_400_16w,),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 9,left: 0),
                      child:Container(height: 44,decoration:  Style.inputBoxDecoration,width: w,
                          child: TextField(
                              controller: numberController,
                              textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add Episode name..."))

                      ))
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Text("Episode Sound:",style: Style.t_400_16w,),
                  ),

                  Row(
                    children: [

                      Container(
                        width: 44,
                        height: 44,
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(Cicon.upload,color: Style.background,),
                        decoration: BoxDecoration(
                            color: Style.accentGold,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      Expanded(flex:12,child:  Padding(
                          padding: const EdgeInsets.only(left: 12,top: 10,bottom: 11),
                          child:Container(height: 44,decoration:  Style.inputBoxDecoration,width: w,
                              child: TextField(

                                  controller: numberController,
                                  textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add Episode name..."))

                          ))),
                    ],
                  ),

                ],),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 8),
                    child: Text("About:",style: Style.t_400_16w,),
                  ),
                  Container(height: 196,decoration:  Style.inputBoxDecoration,width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          TextField(
                              controller: numberController,
                              maxLines: 6,
                              minLines: 5,

                              textAlign: TextAlign.left,decoration: Style.inputTextDecoration),
                          Padding(
                            padding: const EdgeInsets.only(right: 5,bottom: 5),
                            child: Container(
                              padding: EdgeInsets.all(12),
                              width: 44,
                              height: 44,
                              child: SvgPicture.asset(svgPath+"modify.svg",width: 17,height: 17,),
                              decoration: BoxDecoration(
                                  color: Style.headerBackBtn,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Text("Tags:",style: Style.t_400_16w,),
                  ),

                  Row(
                    children: [
                      Expanded(flex:12,child:  Padding(
                          padding: const EdgeInsets.only(right: 11,top: 8,bottom: 11),
                          child:Container(height: 44,decoration:  Style.inputBoxDecoration,width: w,
                              child: TextField(

                                  controller: numberController,
                                  textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Seperate with ,"))

                          ))),
                      Container(
                        width: 44,
                        height: 44,
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(Cicon.add,color: Style.background,),
                        decoration: BoxDecoration(
                            color: Style.accentGold,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ],
                  ),
                  Tags(
                    horizontalScroll: true,

                    itemCount: _tagsList.length, // required
                    itemBuilder: (int index){
                      final item = _tagsList[index];
                      return ItemTags(
                        removeButton: ItemTagsRemoveButton(
                            margin: const EdgeInsets.only(right: 2),
                            color: Style.background,backgroundColor: Colors.transparent,size: 16,
                            onRemoved: (){
                              setState(() {
                                _tagsList.removeAt(index);
                              });
                              return true;}),
                        elevation: 0,
                        textOverflow: TextOverflow.ellipsis,
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                        border: Border.all(color: Style.whiteE5),
                        borderRadius: BorderRadius.circular(12),
                        textColor: Style.background,
                        textActiveColor: Style.background,
                        activeColor:Style.whiteE5,
                        // Each ItemTags must contain a Key. Keys allow Flutter to
                        // uniquely identify widgets.
                        key: Key(index.toString()),
                        index: index, // required
                        title: item,
                        textStyle: Style.t_400_14_back,
                        combine: ItemTagsCombine.withTextAfter,
                      );

                    },
                  ),
                ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 56),
                    child: Text("Premium Content :",style: Style.t_400_16w,),
                  ),
                  Row(children: [
                    Row(
                      children: [
                        Radio(fillColor: MaterialStateProperty.all(Style.accentGold),value: "Both", groupValue: radioProductValue, onChanged: (value) {
                          setState(() {
                            radioProductValue=value;
                          });
                        },),
                        Text("Free",style: Style.t_400_12w,),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(fillColor: MaterialStateProperty.all(Style.accentGold),value: "Premium Access", groupValue: radioProductValue, onChanged: (value) {
                          setState(() {
                            radioProductValue=value;
                          });
                        },),
                        Text("Premium Access",style: Style.t_400_12w,),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(fillColor: MaterialStateProperty.all(Style.accentGold),value: "Single Product", groupValue: radioProductValue, onChanged: (value) {
                          setState(() {
                            radioProductValue=value;
                          });
                        },),
                        Text("Single Product",style: Style.t_400_12w,),
                      ],
                    ),



                  ],),
                ],),

              Column(children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: Style.accentGold,
                      checkColor: Style.background,

                      value: true, onChanged: (value) {

                    },),
                    Text("Allow Comments",style: Style.t_400_16w,),

                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Style.accentGold,
                      checkColor: Style.background,

                      value: true, onChanged: (value) {

                    },),
                    Text("Allow Sharing",style: Style.t_400_16w,),

                  ],
                ),
              ],),

              Padding(
                padding: const EdgeInsets.only(top: 56),
                child: RichText(text: TextSpan(

                    children: [
                      TextSpan(text:"By posting this content you will admit to accept the",style: Style.t_400_14_grayA1),
                      TextSpan(text:" Castalk Agreement and Policy",style:Style.t_400_14g)
                    ])),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 9, top: 88),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Cicon.calendar, color: Style.accentGold),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Schedule",
                                    style: Style.t_500_18g,
                                  ),
                                )
                              ]),
                          style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(Size(w, 54)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.only(left: 6, top: 6, bottom: 6)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                      side: const BorderSide(color: Style.gray4C))),
                              backgroundColor: MaterialStateProperty.all(Style.gray4C)),
                        ),
                      )),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              right: 0, left: 9, top: 88),
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            child: Text(
                              "Save Draft",
                              style: Style.t_500_18g,
                            ),
                            style: ButtonStyle(
                                fixedSize:
                                MaterialStateProperty.all(Size(w, 54)),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.only(
                                        left: 6, top: 6, bottom: 6)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0),
                                        side: const BorderSide(color: Style.gray4C))),
                                backgroundColor:
                                MaterialStateProperty.all(Style.gray4C)),
                          ))),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 12,bottom: 64),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Cicon.upload,color: Style.background,width: 17,height: 17,allowDrawingOutsideViewBox: true,fit: BoxFit.contain,),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Publish",
                            style: Style.t_500_18_back,
                          ),
                        ),

                      ]),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all( Size(w, 54)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 6, top: 6, bottom: 6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.accentGold))),
                      backgroundColor: MaterialStateProperty.all(Style.accentGold)),
                ),
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
            padding: const EdgeInsets.only(left: 0),
            child: Text("New Podcast", style: _textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }
}
