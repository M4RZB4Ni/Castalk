import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Activity extends StatefulWidget{
  const Activity({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return ActivityState();
  }


}

class ActivityState extends State<Activity>{

  String svgPath = "assets/icons/";

  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {


    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w, 170), child: header(w)),
      backgroundColor: Theme.of(context).backgroundColor,
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
                    child: Text("NEW:",style: Style.t_500_14g)),

                    _followingItem(w, h),

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
                    child: Text("Other Purchases:",style: Style.t_500_14w),
                  ),
                  _newReleaseItem(w, h)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _followingItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 73,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 14,top: 8,bottom: 8),
            child: Container(
              height: 57,
              width: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/57/57'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text("Amir Mehranfar".length > 30 ? "Amir Mehranfar".substring(0,30)+"..." : "Amir Mehranfar",style: Style.t_400_14g),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,),
                  child: Text("is Following you",style: Style.t_400_12w,),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 9,right: 9),
                  child:  Text("Today 8:48",style: Style.t_300_10g9D,),
                )),
              ],
            ),
          )),
        ],),),
    );
  }




  _newReleaseItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.background,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 74,
        child: Stack(children: [

        Stack(
        children: [
        Container(
        width: 126,
          height: 74,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(17)),

            image: DecorationImage(
              image: NetworkImage(
                  'https://picsum.photos/126/47'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(child: Align(
            alignment: Alignment.centerRight,
            child:  Container(
              width: 73,
              height: 74,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight:  Radius.circular(16)),
                gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  colors: [
                    Colors.transparent,
                    Style.background,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.center,
                  stops: [0, 0.8],
                ),
              ),
            ))),
        ],
      ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Row(
                    children: [
                      SvgPicture.asset(svgPath+"micdouble.svg",width: 8,height: 14,),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("New Release",style: Style.t_400_14g),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,),
                  child: Text("Elton John Released new Episode".length>35 ? "Elton John Released new Episode".substring(0,30)+"..." : "Elton John Released new Episode",style: Style.t_400_12w,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7,bottom: 9,right: 9),
                  child:  Text("Today 8:48",style: Style.t_300_10g9D,),
                ),
              ],
            ),
          )),

          Align(
          alignment: Alignment.centerRight,child: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              width: 44,
              height: 44,
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(svgPath+"play.svg",color: Style.accentGold,),
              decoration: BoxDecoration(
                  color: Style.gray38,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ))

        ],),),
    );
  }


/*
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
              ), */
/* add child content here *//*

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
              ), */
/* add child content here *//*

            ),
          )


        ],),),
    );
  }
*/



  header(w) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 29,top: 45),
              child: Text("Activity", style:Style.t_500_24w),
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 23,right: 23,left: 23),
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
                child: SvgPicture.asset(svgPath+"search.svg",width: 14,height: 14,),
                decoration: BoxDecoration(
                    color: Style.headerBackBtn,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(svgPath+"filter.svg",width: 14,height: 14,),
                decoration: BoxDecoration(
                    color: Style.glassBlack,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: 44,
                height: 44,
                child: SvgPicture.asset(svgPath+"sort.svg",width: 14,height: 14,),
                decoration: BoxDecoration(
                    color: Style.glassBlack,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              )
            ],
          ),
        )
      ],
    );
  }





}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: 240,
      height: 480,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 5,
                    offset: Offset(0, 7),
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Old_man_reading_news_paper_early_in_the_morning_at_Basantapur-IMG_6800.jpg/1280px-Old_man_reading_news_paper_early_in_the_morning_at_Basantapur-IMG_6800.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.red
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 0.6, 1],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    //place this container to right side
                    constraints: BoxConstraints(maxWidth: 240.0),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white.withOpacity(0.8)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.directions_bike,
                          color: Colors.red,
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //display event name, start/end dates times and duration in a column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NAME',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                      SizedBox(
                        height: 3.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}