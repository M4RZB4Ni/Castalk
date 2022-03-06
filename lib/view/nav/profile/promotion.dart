import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


class Promotion extends StatefulWidget{
  const Promotion({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PromotionState();
  }

}

class PromotionState extends State<Promotion>
{

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();
  late dynamic radioTypeValue="fixed";
  late dynamic radioProductValue="Both";
  final GlobalKey<TagsState> _tagStateKey = GlobalKey<TagsState>();

  @override
  Widget build(BuildContext context) {

    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 120), child: header(w)),
      body:   Padding(
        padding: const EdgeInsets.only(right: 24,left: 24,bottom: 40,top: 29),
        child: SingleChildScrollView(child:
          SizedBox(
            height:h,
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name:",style: Theme.of(context).textTheme.bodyText1),
                        Padding(
                            padding: const EdgeInsets.only(top: 8,bottom: 9),
                            child:Container(height: 44,decoration:  Style.inputBoxDecoration,width: w,
                                child: TextField(
                                    controller: numberController,
                                    textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)

                            )),


                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amount:",style: Theme.of(context).textTheme.bodyText1),
                  Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 9),
                      child:Container(height: 44,decoration:  Style.inputBoxDecoration,width: w,
                          child: TextField(
                              controller: numberController,
                              textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)

                      )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text("Type",style: Style.t_400_16w,),
                  ),
                  Row(children: [
                    Row(
                      children: [
                        Radio(fillColor: MaterialStateProperty.all(Style.accentGold),value: "fixed", groupValue: radioTypeValue, onChanged: (value) {
                          setState(() {
                            radioTypeValue=value;
                          });
                        },),
                        Text("Fixed",style: Style.t_400_12w,),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(fillColor: MaterialStateProperty.all(Style.accentGold),value: "percentage", groupValue: radioTypeValue, onChanged: (value) {
                          setState(() {
                            radioTypeValue=value;
                          });
                        },),
                        Text("Percentage",style: Style.t_400_12w,),
                      ],
                    ),


                  ],)

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text("Product",style: Style.t_400_16w,),
                  ),
                  Row(children: [
                    Row(
                      children: [
                        Radio(fillColor: MaterialStateProperty.all(Style.accentGold),value: "Both", groupValue: radioProductValue, onChanged: (value) {
                          setState(() {
                            radioProductValue=value;
                          });
                        },),
                        Text("Both",style: Style.t_400_12w,),
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

                  Visibility(
                      visible: radioProductValue=="Single Product",
                      child: Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 9),
                          child:  Container(
                            width: w,
                            height: 44,
                            decoration:Style.inputBoxDecoration.copyWith(border: Border.all(color: Style.gray9D,width: 1)),
                            child: Row(
                              children: [
                                Expanded(flex: 6,child:Tags(
                                  key:_tagStateKey,
                                  textField: TagsTextField(
                                    width: w,
                                    inputDecoration: Style.inputTextDecoration,
                                    constraintSuggestion: true, suggestions: [],
                                  ),
                                )),
                                Expanded(
                                    flex: 1,child: InkWell(child: SvgPicture.asset(
                                  svgPath + "search.svg",
                                  width: 20,
                                  height: 20,
                                  color: Style.gray86,
                                ),onTap: () {
                                  settings(w, h);
                                },))
                              ],
                            ),
                          )
                      )),



                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 9),
                      child:Container(
                        width: w,
                        height: 44,
                        decoration:Style.inputBoxDecoration,
                        child: Row(
                          children: [
                            Expanded(flex: 12,child:TextField(
                                controller: numberController,
                                textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)),
                            Expanded(
                                flex: 1,child: SvgPicture.asset(
                              svgPath + "calendar.svg",
                              width: 18,
                              height: 18,
                            )),
                            Expanded(
                                flex: 1,child: SvgPicture.asset(
                              svgPath + "arrow_down.svg",
                              width: 10,
                              height: 10,
                            ))
                          ],
                        ),
                      )),



                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 9),
                      child:Container(
                        width: w,
                        height: 44,
                        decoration:Style.inputBoxDecoration,
                        child: Row(
                          children: [
                            Expanded(flex: 12,child:TextField(
                                controller: numberController,
                                textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)),
                            Expanded(
                                flex: 1,child: SvgPicture.asset(
                              svgPath + "calendar.svg",
                              width: 18,
                              height: 18,
                            )),
                            Expanded(
                                flex: 1,child: SvgPicture.asset(
                              svgPath + "arrow_down.svg",
                              width: 10,
                              height: 10,
                            ))
                          ],
                        ),
                      )),



                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("Create redeem:",style: Style.t_400_16w,),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(Cicon.random),
                        decoration: BoxDecoration(
                            color: Style.accentGold,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      Expanded(flex:12,child:  Padding(
                          padding: const EdgeInsets.only(top: 0,bottom: 9,left: 10),
                          child:Container(height: 44,decoration:  Style.inputBoxDecoration,width: w,
                              child: TextField(
                                  controller: numberController,
                                  textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)

                          )))
                    ],
                  )



                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 39),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed:() => debugPrint(""), child:const Text("Save",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                side: const BorderSide(color: Color(0xffFFB800))
                            )
                        ),
                        backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),),
                    Container(
                      width: 54,
                      height: 54,
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(Cicon.delete),
                      decoration: BoxDecoration(
                          border: Border.all(color: Style.redAccent,width: 1),
                          color: Colors.transparent,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    )

                  ],
                ),
              )
            ],
          ),
    )),
      ));
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
              // SvgPicture.asset(
              //   svgPath + "Downloads.svg",
              //   width: 24,
              //   height: 23,
              //   color: Style.accentGold,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text("Promotion", style: _textTheme.headline1),
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







  settings(w,h)
  {
    showMaterialModalBottomSheet(
      expand: false,
      context: context,
      backgroundColor: Style.gray38,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24))),
      builder: (context) =>
       SizedBox(width: w,height: h/1.5,child:
       Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween ,
             children: [
               Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined,color: Colors.white,size: 18,) ,decoration:
               BoxDecoration(color: Style.gray48.withOpacity(0.4),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
               Text("Select an Item",style: Theme.of(context).textTheme.bodyText1),

               Container(width: 44,),
             ],
           ),
           _searchBar(w),
           Expanded(child: ListView(children: [
             _searchItems(w, h)
           ],))
         ],
       )
        ,),
    );
  }


  _searchBar(w)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 33,right: 15,left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 44,
              decoration: BoxDecoration(
                  borderRadius:
                  const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                      width: 1, color: Style.grayD1)),
              width: w / 2,
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
            child: SvgPicture.asset(
              svgPath + "search.svg",
              color: Style.accentGold,
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              svgPath + "filter.svg",
              color: Style.grayD1,
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Style.grayD1),
                color: Colors.transparent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(
              svgPath + "sort.svg",
              color: Style.grayD1,
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Style.grayD1),
                color: Colors.transparent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          )
        ],
      ),
    );
  }

  _searchItems(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 80,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 6,top: 6,bottom: 6),
            child: Container(
              height: 66,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/66/66'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Item’s name which may be as long as my...".length > 30 ? "Item’s name which may be as long as my...".substring(0,30)+"..." : "Item’s name which may be as long as my...",style: Style.t_400_14w),
                Text("Subscription",style: Style.t_400_12w,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Name",style: Style.t_400_12w),
                    Text("25\$",style: Style.t_400_12g,),

                  ],
                ),

              ],
            ),
          )),
        ],),),
    );
  }




}