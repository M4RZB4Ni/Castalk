import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Purchases extends StatefulWidget{
  const Purchases({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PurchasesState();
  }

}
class PurchasesState extends State<Purchases>
{

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _textTheme = Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(preferredSize: Size(w, 80), child: _searchBar(w)),
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
                    padding: const EdgeInsets.only(top: 18,left: 25),
                    child: Text("Active Subscriptions:",style: Style.t_500_14g),
                  ),
                  _activeSubscriptionsItem(w, h),

                ],
              ),
            ),
            Flexible(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18,left: 25),
                    child: Text("Other Purchases:",style: Style.t_500_14g),
                  ),
                  _otherPurchasesItem(w, h)

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }

  _searchBar(w)
  {
    return Padding(
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
    );
  }

  _activeSubscriptionsItem(w,h)
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
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Subscription",style: _textTheme.bodyText1!.copyWith(fontSize: 12),),
                    Text("Due : 63 days",style: _textTheme.bodyText1!.copyWith(color: Style.redAccent,fontSize: 12)),
                  ],),

              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 6,top: 6,bottom: 6),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(svgPath+"info.svg",width: 18,height: 18,),
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


  _otherPurchasesItem(w,h)
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Episode",style: _textTheme.bodyText1!.copyWith(fontSize: 12),),
                    Text("12/08/2021",style: _textTheme.bodyText1!.copyWith(fontSize: 12,color: Style.gray9D)),
                  ],),

              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 6,top: 6,bottom: 6),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(svgPath+"info.svg",width: 18,height: 18,),
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