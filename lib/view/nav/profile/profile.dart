import 'package:castalk/controllers/followers_controller.dart';
import 'package:castalk/controllers/motion_controller.dart';
import 'package:castalk/controllers/play_list_controller.dart';
import 'package:castalk/controllers/profile_single_controller.dart';
import 'package:castalk/routes/routes.dart';
import 'package:castalk/style.dart';
import 'package:castalk/view/nav/profile/liked_episodes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import '../../../controllers/episode_controller.dart';

class Profile extends GetView<ProfileController>{

  String svgPath="assets/icons/";
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return Scaffold(
              backgroundColor: Style.background,
              appBar: PreferredSize(preferredSize: Size(Get.width,300),
                child: Stack(
                    children: [
                      Container(
                          width: Get.width,
                          height: 180,
                          decoration:
                          const BoxDecoration(color:Color(0xff414141),shape: BoxShape.rectangle,borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)))),
                      //
                      Padding(
                        padding: const EdgeInsets.only(top: 24,left: 24),
                        child: Container(padding: const EdgeInsets.all(10),width: 44,height: 44,child: SvgPicture.asset(svgPath+"modify.svg",width: 17,height: 17,) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                      ),
                      //
                      Align(alignment: Alignment.topRight,
                          child: Container(
                              padding: const EdgeInsets.all(19),width: 44,height: 85,
                              child: SvgPicture.asset(svgPath+"moredots.svg") ,
                              decoration: BoxDecoration(color: const Color(0xff80808080).withOpacity(0.5),
                                  shape: BoxShape.rectangle,
                                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(34))))),
                      //
                      Padding(
                        padding: const EdgeInsets.only(left: 24,top: 39),
                        child: Align(alignment: Alignment.centerLeft,
                            child: Row(children: [
                              ClipRRect(child: Image.network("https://picsum.photos/96"),borderRadius: const BorderRadius.all(Radius.circular(20)),),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 60),
                                child: Row(
                                  children: [
                                    Text(controller.profileSingleList[0].username.toString(), style: Theme.of(context).textTheme.headline1),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Container(decoration: BoxDecoration(color: Theme.of(context).focusColor,shape: BoxShape.circle),
                                          width: 13,height: 13,child: const Icon(Icons.check,color: Style.background,size: 13,)),
                                    )
                                  ],
                                ),
                              )
                            ],)),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.only(left: 62,bottom: 22,),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Listens",style: Get.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                                Text("12K",style: Get.textTheme.headline1),
                              ],)),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.only(left: 0,bottom: 22),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Followers",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                                Text(Get.find<FollowersController>().followersList.length < 1000 ? Get.find<FollowersController>().followersList.length.toString() : Get.find<FollowersController>().followersList.length.toString()+'K',style: Theme.of(context).textTheme.headline1),
                              ],)),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.only(right: 62,bottom: 22),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Posts",style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                                Text("102",style: Theme.of(context).textTheme.headline1),
                              ],)),
                      ),
                    ]),
              ),
              bottomNavigationBar: Obx( () =>
                  AnimatedBottomNavigationBar(
                      icons: const [
                        LineIcons.headset,
                        LineIcons.search,
                        LineIcons.home,
                        LineIcons.list,
                        LineIcons.user,
                      ],
                      iconSize: 30,
                      leftCornerRadius: 20,
                      gapLocation: GapLocation.none,
                      activeIndex: Get.find<MotionController>().index.value,
                      activeColor: const Color(0xffFFB800),
                      inactiveColor: Colors.white,
                      backgroundColor: const Color(0xff323232),
                      notchSmoothness: NotchSmoothness.verySmoothEdge,
                      onTap: (index){
                        Get.find<MotionController>().index.value = index;
                      }
                  )
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.Playlist);
                      },
                      child: Container(
                        decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                  child: Container(width: 43,height: 43,child: Icon(Icons.playlist_play,color: Theme.of(context).focusColor, size: 30) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                  child: Text("PlayLists",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Text(Get.find<PlayListController>().playList.length.toString(),style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),),
                            ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                          ],),),
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.LikedEpisodes);
                      },
                      child: Container(
                        decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                  child: Container(width: 43,height: 43,child: Icon(LineIcons.heart,color: Get.theme.focusColor, size: 25) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                  child: Text("Liked Episodes",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Text(
                                  Get.find<EpisodeController>().viewEpisodeList[0].data!.likes_count!.toString() != 0
                                      ? Get.find<EpisodeController>().viewEpisodeList.length.toString() : '0',
                                  style: Get.textTheme.headline1!.copyWith(fontSize: 18))
                            ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                          ],),),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                child: Container(width: 43,height: 43,child: Icon(Icons.hearing_rounded,color: Theme.of(context).focusColor, size: 25) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                child: Text("Listening Status",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                              ),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                              )
                          ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                        ],),),
                    Container(
                      decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                child: Container(width: 43,height: 43,child: Icon(LineIcons.star,color: Theme.of(context).focusColor, size: 25) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                child: Text("Achivments",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                              ),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                              )
                          ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                        ],),),
                    Container(
                      decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                child: Container(width: 43,height: 43,child: Icon(Icons.pie_chart_outline_outlined,color: Theme.of(context).focusColor, size: 25) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                child: Text("My Casts",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                              ),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                              )
                          ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                        ],),),
                    Container(
                      decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                child: Container(width: 43,height: 43,child: Icon(Icons.shopping_basket_outlined,color: Theme.of(context).focusColor, size: 25) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                child: Text("Market",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                              ),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                              )
                          ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                        ],),),
                    Container(
                      decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                child: Container(width: 43,height: 43,child: Icon(Icons.percent,color: Theme.of(context).focusColor, size: 25) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                child: Text("Promotion",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                              ),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                              )
                          ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                        ],),),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: const BoxDecoration(color: Color(0xff323232),borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 6,bottom: 6),
                                child: Container(width: 43,height: 43,child: Icon(Icons.cloud_download_outlined,color: Theme.of(context).focusColor, size: 25) , decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                child: Text("Downloads",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),),
                              ),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                              )
                          ),
/*
            Container(width: 44,height: 44,child: IconButton(
              color: Colors.yellow,

              icon: const Icon(Icons.edit,color: Colors.white,),onPressed:() {

            },) ,decoration: BoxDecoration(color: Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)))
*/

                        ],),),
                  ],
                ),
              ),
          );
        },
      ),
    );
  }

}