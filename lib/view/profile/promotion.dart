import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';

import '../../style.dart';

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
  late final List _items=[["name","picture","type"],["name","picture","type"],["name","picture","type"]];

  @override
  Widget build(BuildContext context) {

    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name:",style: Theme.of(context).textTheme.bodyText1),
                Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 9),
                    child:Container(height: 55,decoration:  Style.inputBoxDecoration,width: w,
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
                    padding: const EdgeInsets.only(top: 15,bottom: 9),
                    child:Container(height: 55,decoration:  Style.inputBoxDecoration,width: w,
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
                      height: 55,
                      decoration:Style.inputBoxDecoration,
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
                              flex: 1,child: SvgPicture.asset(
                            svgPath + "search.svg",
                            width: 20,
                            height: 20,
                            color: Style.gray86,
                          ))
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
                      height: 55,
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
                          Padding(
                            padding: const EdgeInsets.only(right: 18,left: 10),
                            child: Expanded(
                                flex: 1,child: SvgPicture.asset(
                              svgPath + "arrow_down.svg",
                              width: 10,
                              height: 10,
                            )),
                          )
                        ],
                      ),
                    )),



              ],
            ),


          ],
        ),
      )

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



  _episodesItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 60,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 6,top: 6,bottom: 6),
            child: Container(
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/47/47'),
                  fit: BoxFit.cover,
                ),
              ), /* add child content here */
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Item’s name which may be as long as my...".length > 30 ? "Item’s name which may be as long as my...".substring(0,30)+"..." : "Item’s name which may be as long as my...",style: _textTheme.bodyText1!.copyWith(fontSize: 14),),
                Text("25\$",style: _textTheme.bodyText1!.copyWith(fontSize: 12,color: Style.accentGold),),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 6,top: 6,bottom: 6),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(svgPath+"close.svg",width: 18,height: 18,),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Style.gray48,
                borderRadius: BorderRadius.circular(12),
              ), /* add child content here */
            ),
          )


        ],),),
    );
  }


}