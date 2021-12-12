import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../style.dart';

class Explore extends StatefulWidget{
  const Explore({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ExploreState();
  }


}

class ExploreState extends State<Explore>{

  String svgPath = "assets/icons/";

  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _searchBar(w),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 26),
                child: Container(
                  width: w,
                  height: 170,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: NetworkImage("https://picsum.photos/414/414"),fit: BoxFit.cover),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _sectionsTitle("New from followings"),
                  _newFromFollowingsSection(w),

                ],),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _sectionsTitle("New from Gaming"),
                  _newFromSecondSection(w,h),

                ],),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _sectionsTitle("New from followings"),
                  _newFromFollowingsSection(w),
                  _wideMiniSection(w),


                ],),














            ],)
      ),


    );
  }

  _searchBar(w){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 24),
      child: Container(
          height: 44,
          width: w,
          decoration: BoxDecoration(
              borderRadius:
              const BorderRadius.all(Radius.circular(12)),
              border: Border.all(
                  width: 1, color: const Color(0xff484848))),
          child: Row(
            children: [
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
                child: SvgPicture.asset(svgPath+"search.svg",width: 14,height: 14,color: Style.gray4D,),
                decoration: BoxDecoration(
                    color: Style.accentGold,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ],
          )),
    );
  }
















  _sectionsTitle(String name)
  {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13,top: 20,left: 29,right: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: Style.t_500_14g,),
          Text("See All",style: Style.t_500_14g,),
        ],
      ),
    );
  }





  _newFromFollowingsSection(w)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 29),
      child: SizedBox(
        width: w,
        height: 170,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return  _newFromFollowingsItem();
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  _wideMiniSection(w)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 29),
      child: SizedBox(
        width: w,
        height: 170,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return  _wideMiniItem();
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }





  _fourthSection(w,h)
  {
    return Flexible(
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            _newFromSecondItem(w,h),
            _fourthItem(w,h),
          ],
        ));
  }

  _fifthSection(w,h)
  {
    return Flexible(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            _fifthItem(w,h),
            _fifthItem(w,h),
            _fifthItem(w,h),
          ],
        ));
  }



  _newFromSecondSection(w,h)
  {
    return Flexible(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            _newFromSecondItem(w,h),
          ],
        ));
  }



  _thirdItem(){
    return  Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(

            height: 122,
            width: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/122/122'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Episode Name and...",style: Style.t_500_14w,),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("Artist and the others",style: Style.t_400_12_gray,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _wideMiniItem(){
    return  Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(

            height: 126,
            width: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/122/122'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Episode Name and...",style: Style.t_500_14w,),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("Artist and the others",style: Style.t_400_12_gray,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  _newFromFollowingsItem(){
    return  Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(

            height: 122,
            width: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/122/122'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Episode Name and...",style: Style.t_500_14w,),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("Artist and the others",style: Style.t_400_12_gray,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



  _fifthItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(25),

                height: 96,
                width: 96,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage('https://picsum.photos/96/96'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  width: 77,
                  height: 77,
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    svgPath + "play.svg",
                  ),
                  decoration: BoxDecoration(
                      color: Style.gray32,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                ) /* add child content here */,
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Episode name which is long...".length > 30
                          ? "Episode name which is long...".substring(0, 30) + "..."
                          : "Episode name which is long...",
                      style: Style.t_400_14_grayA1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(svgPath+"timer.svg"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("1 : 26 : 45",
                                        style: Style.t_400_12_grayA1),
                                  ),
                                ],
                              ),
                              Text("News",
                                  style:Style.t_400_12g)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12,right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(svgPath+"people_group.svg"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("250",
                                        style: Style.t_400_12_grayA1),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Text("2 days ago",
                                    style: Style.t_400_12_grayA1),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
              Container(
                height: 96,
                width: 44,

                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: Style.grayTrans03,borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                    svgPath + "arrow_left.svg",
                    width: 12,
                    height: 6),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8,top: 8,right: 12,left: 12),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          )
        ],
      ),
    );

  }




  _newFromSecondItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
      child: Container(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
          SizedBox(
            height: 48,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                child: Blur(
                  colorOpacity: 0.45,
                  blur: 2,
                  child:Row(children: [],),)),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 13,top: 10,bottom: 10,left: 23),
            child: Row(
              children: [
                Container(

                  height: 29,
                  width: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/29/29'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text("Podcast Name",style: Style.t_500_18w,),
                ),

              ],
            ),
          ),
        ],),
        width: w,
        height: 126,
        decoration: BoxDecoration(
            image: const DecorationImage(image: NetworkImage("https://picsum.photos/414/126"),fit: BoxFit.cover),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20)),
      ),
    );

  }


  _fourthItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
      child: Container(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
              height: 48,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  child: Blur(
                    colorOpacity: 0.45,
                    blur: 2,
                    child:Row(children: [],),)),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 13,top: 10,bottom: 10,left: 23),
              child: Row(
                children: [
                  Container(

                    height: 29,
                    width: 29,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        image: NetworkImage('https://picsum.photos/29/29'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Text("Podcast Name",style: Style.t_500_18w,),
                  ),

                ],
              ),
            ),
          ],),
        width: w,
        height: 126,
        decoration: BoxDecoration(
            image: const DecorationImage(image: NetworkImage("https://picsum.photos/414/126"),fit: BoxFit.cover),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20)),
      ),
    );

  }




  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 28,top: 36),
            child: Text("Explore", style:Style.t_500_24w),
          ),

        ],
      ),
    );
  }



}