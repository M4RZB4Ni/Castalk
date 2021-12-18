import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class PromotionList extends StatefulWidget {
  const PromotionList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PromotionState();
  }
}

class PromotionState extends State<PromotionList> {
  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();
  late TextStyle itemHeaderStyle;

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    itemHeaderStyle =
        _textTheme.headline2!.copyWith(fontWeight: FontWeight.w500);

    return Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.only(bottom: 59,left: 26),
          child: ElevatedButton(onPressed:() => print(""), child:const Text("+ Create new Code",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: const BorderSide(color: Color(0xffFFB800))
                  )
              ),
              backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),),
        ),
        backgroundColor: Style.background,
        appBar: PreferredSize(preferredSize: Size(w, 140), child: header(w)),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 25,bottom: 10),
                      child:
                          Text("Active Promotions:", style: itemHeaderStyle),
                    ),
                    _activePromotionItem(w,h),
                  ],
                ),
              ),
              Flexible(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 25,bottom: 10),
                      child: Text("Expired:", style: itemHeaderStyle),
                    ),
                    _expiredItem(w,h),

                  ],
                ),
              ),
            ],
          ),
        )

    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Column(
        children: [
          Row(
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
                    child: Text("Promotion List", style: _textTheme.headline1),
                  ),
                ],
              ),
              const SizedBox(
                width: 44,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        border: Border.all(
                            width: 1, color: const Color(0xff484848))),
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
                    width: 14,
                    height: 14,
                  ),
                  decoration: BoxDecoration(
                      color: Style.glassBlack,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 44,
                  height: 44,
                  child: SvgPicture.asset(
                    svgPath + "sort.svg",
                    width: 14,
                    height: 14,
                  ),
                  decoration: BoxDecoration(
                      color: Style.glassBlack,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }


  _activePromotionItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 19),
            child: Text("name of redeem",style: _textTheme.headline1!.copyWith(fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19,right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Amount: 25 %",style: Style.t_400_12w,),
              Text("Both",style: Style.t_400_12w,),

            ],),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 19,right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("From:   ",style: Style.t_400_12w,),
                      Text("12/08/2021",style: Style.t_400_12_9D,),
                    ],
                  ),
                  Row(
                    children: [
                      Text("To:   ",style: Style.t_400_12w,),
                      Text("12/08/2021",style: Style.t_400_12_9D,),
                    ],
                  )

                ],),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 9,bottom: 11,right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          width: 44,
                          height: 44,
                          child:  SvgPicture.asset(svgPath+"copy.svg",width: 18.0,height: 18,),
                          decoration: BoxDecoration(
                              color: Style.headerBackBtn,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Text("X52-514S-254",style: Style.t_500_18g,),
                        ),
                      ],
                    ),

                  Container(
                    padding: const EdgeInsets.all(12),
                    width: 44,
                    height: 44,
                    child:  SvgPicture.asset(svgPath+"pizza.svg"),
                    decoration: BoxDecoration(
                        color: Style.headerBackBtn,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12)),
                  )

                ],),
            )



          ],),),
    );

  }


  _expiredItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 19),
              child: Text("name of redeem",style: _textTheme.headline1!.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19,right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Amount: 25 %",style: Style.t_400_12w,),
                  Text("Both",style: Style.t_400_12w,),

                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19,right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("From:   ",style: Style.t_400_12w,),
                      Text("12/08/2021",style: Style.t_400_12_9D,),
                    ],
                  ),
                  Row(
                    children: [
                      Text("To:   ",style: Style.t_400_12w,),
                      Text("12/08/2021",style: Style.t_400_12r,),
                    ],
                  )

                ],),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 9,bottom: 11,right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text("X52-514S-254",style: Style.t_500_18g,),
                ),

                  Container(
                    padding: const EdgeInsets.all(12),
                    width: 44,
                    height: 44,
                    child:  SvgPicture.asset(svgPath+"pizza.svg"),
                    decoration: BoxDecoration(
                        color: Style.headerBackBtn,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12)),
                  )

                ],),
            )



          ],),),
    );

  }


}


