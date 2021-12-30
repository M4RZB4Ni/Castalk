import 'package:castalk/cicon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:castalk/style.dart';

class HomeFeed extends StatefulWidget{
  const HomeFeed({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeFeedState();
  }


}

class HomeFeedState extends State<HomeFeed>{

  String svgPath = "assets/icons/";


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,top: 21,left: 14,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New from Gaming",style: Style.t_500_14g,),
                      Text("See All",style: Style.t_500_14g,),
                    ],
                  ),
                ),

                _newFromSecondSection(w,h),

              ],),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,top: 21,left: 14,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tops from followings",style: Style.t_500_14g,),
                      Text("See All",style: Style.t_500_14g,),
                    ],
                  ),
                ),

                _newFromSecondSection(w,h),

              ],),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 13,top: 21,left: 29,right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Listen where you left",style: Style.t_500_14g,),
                      Text("See All",style: Style.t_500_14g,),
                    ],
                  ),
                ),
                _newFromThirdSection(w),

              ],),







            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,top: 21,left: 17,right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New from Arts",style: Style.t_500_14g,),
                      Text("See All",style: Style.t_500_14g,),
                    ],
                  ),
                ),
                _fourthSection(w,h),

              ],),

            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,top: 21,left: 17,right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top podcasts",style: Style.t_500_14g,),
                      Text("See All",style: Style.t_500_14g,),
                    ],
                  ),
                ),
                _fifthSection(w,h),

              ],),


        ],)
      ),


    );
  }
  
  _sectionsTitle(String name)
  {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13,top: 21,left: 14,right: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: Style.t_500_14g,),
          Text("See All",style: Style.t_500_14g,),
        ],
      ),
    );
  }

  _newFromThirdSection(w)
  {
    return Container(
      margin: const EdgeInsets.only(left: 29),
      height: 190,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return  _thirdItem();
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }



  _newFromFollowingsSection(w)
  {
    return Container(
      margin: const EdgeInsets.only(left: 14),
      height: 180,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return  _newFromFollowingsItem();
          },
        scrollDirection: Axis.horizontal,
      ),
    );
  }


  _fourthSection(w,h)
  {
    return Flexible(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            _fourthItem(w,h),
            _fourthItem(w,h),
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
            _newFromSecondItem(w,h),
            _newFromSecondItem(w,h),
          ],
        ));
  }



  _thirdItem(){
    return  Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(40),

            height: 122,
            width: 126,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/122/126'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: 44,
              height: 44,
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                Cicon.play,
              ),
              decoration: BoxDecoration(
                  color: Style.gray3cop30,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            ) /* add child content here */,
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            width: 122,
            height: 6,
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: 0.7,
                valueColor: AlwaysStoppedAnimation<Color>(Style.accentGold),
                backgroundColor: Style.gray58,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
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
      padding: const EdgeInsets.only(right: 18.5),
      child: Column(
        children: [
          Container(

            height: 126,
            width: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/122/126'),
                fit: BoxFit.fill,
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
                      color: Style.gray3cop30,
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
      padding: const EdgeInsets.only(left: 20,right: 14),
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
                      color: Style.gray3cop30,
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
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text(
                        "Episode name which is long...".length > 30
                            ? "Episode name which is long...".substring(0, 30) + "..."
                            : "Episode name which is long...",
                        style: Style.t_400_14_grayA1,
                      ),
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
                                  SvgPicture.asset(svgPath+"heart_empty.svg"),
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


  _fourthItem(w,h)
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
                      color: Style.gray3cop30,
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
                                  SvgPicture.asset(svgPath+"heart_empty.svg"),
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




  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 29,top: 36),
            child: Text("Feed", style:Style.t_500_24w),
          ),

        ],
      ),
    );
  }



}