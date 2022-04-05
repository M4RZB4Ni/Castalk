import 'package:castalk/controllers/analytics_controller.dart';
import 'package:castalk/controllers/play_list_controller.dart';
import 'package:castalk/controllers/profile_single_controller.dart';
import 'package:castalk/routes/routes.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../cicon.dart';
import '../../../controllers/episode_controller.dart';

class Profile extends GetView<ProfileController>{

  String svgPath="assets/icons/";
  Profile({Key? key}) : super(key: key);
  var listensK = '${(Get.find<AnalyticsController>().analyticsList[0].data!.listens! / 1000).toStringAsFixed(0)}K';
  var followersK = '${(Get.find<AnalyticsController>().analyticsList[0].data!.followers! / 1000).toStringAsFixed(0)}K';
  var postsK = '${(Get.find<AnalyticsController>().analyticsList[0].data!.posts! / 1000).toStringAsFixed(0)}K';

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return Scaffold(
              backgroundColor: Style.background,
              drawer: _drawer(),
              appBar: AppBar(
                leading: Builder(builder: (context) =>
                    PreferredSize(
                      preferredSize: Size(Get.width,300),
                      child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                    width: Get.width,
                                    height: 180,
                                    decoration:
                                    const BoxDecoration(color:Color(0xff414141),shape: BoxShape.rectangle,borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)))),
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 24),
                                  child: InkWell(
                                    onTap: (){
                                      Get.toNamed(Routes.ProfileEdit);
                                    },
                                    child: Container(padding: const EdgeInsets.all(10),width: 44,height: 44,child: SvgPicture.asset(svgPath+"modify.svg",width: 17,height: 17), decoration: BoxDecoration(color: const Color(0xff80808080).withOpacity(0.5),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),
                                    ),
                                  ),
                                ),
                                Align(alignment: Alignment.topRight,
                                  child: InkWell(
                                    onTap: () => Scaffold.of(context).openDrawer(),
                                    child: Container(
                                        padding: const EdgeInsets.all(19),width: 44,height: 85,
                                        child: SvgPicture.asset(svgPath+"moredots.svg"),
                                        decoration: BoxDecoration(color: const Color(0xff80808080).withOpacity(0.5),
                                            shape: BoxShape.rectangle,
                                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(34)))),
                                  ),
                                ),
                              ]),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 24,top: 39),
                                  child: Align(alignment: Alignment.centerLeft,
                                      child: Row(children: [
                                        ClipRRect(child: Image.network("https://picsum.photos/96"),borderRadius: const BorderRadius.all(Radius.circular(20)),),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,top: 60),
                                          child: Row(
                                            children: [
                                              Text(controller.profileSingleList[0].username.toString(), style: Get.textTheme.headline1),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: Container(decoration: BoxDecoration(color: Get.theme.focusColor,shape: BoxShape.circle),
                                                    width: 13,height: 13,child: const Icon(Icons.check,color: Style.background,size: 13,)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 62,bottom: 22),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Listens",style: Get.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                                          Text(int.parse(Get.find<AnalyticsController>().analyticsList[0].data!.listens!.toString()) < 1000 ? Get.find<AnalyticsController>().analyticsList[0].data!.listens!.toString() : int.parse(Get.find<AnalyticsController>().analyticsList[0].data!.listens!.toString()) >= 1000 ? listensK : '', style: Get.textTheme.headline1),
                                        ],)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0,bottom: 22),
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Followers",style: Get.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500)),
                                          Text(int.parse(Get.find<AnalyticsController>().analyticsList[0].data!.followers!.toString()) < 1000 ? Get.find<AnalyticsController>().analyticsList[0].data!.followers!.toString() : int.parse(Get.find<AnalyticsController>().analyticsList[0].data!.followers!.toString()) >= 1000 ? followersK : '',style: Get.textTheme.headline1),
                                        ],)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 62,bottom: 22),
                                  child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Posts",style: Get.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
                                          Text(int.parse(Get.find<AnalyticsController>().analyticsList[0].data!.posts!.toString()) < 1000 ? Get.find<AnalyticsController>().analyticsList[0].data!.posts!.toString() : int.parse(Get.find<AnalyticsController>().analyticsList[0].data!.posts!.toString()) >= 1000 ? postsK : '',style: Get.textTheme.headline1),
                                        ],)),
                                ),
                              ]),
                          ]),
                    ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(right: 22, left: 22, bottom: 20),
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
                                  child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"playLists_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                  child: Text("PlayLists",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 17,right: 32,bottom: 17),
                              child: Text(Get.find<PlayListController>().playList.length.toString(),style: Get.textTheme.headline1!.copyWith(fontSize: 18),),
                            ),
                          ]),
                      ),
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
                                  child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"likedEpisodes_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
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
                                  Get.find<EpisodeController>().viewEpisodeList.isNotEmpty
                                      ? Get.find<EpisodeController>().viewEpisodeList.length.toString() : '0',
                                  style: Get.textTheme.headline1!.copyWith(fontSize: 18)),
                            ),
                          ]),
                      ),
                    ),
                    InkWell(
                        onTap: (){
                          Get.toNamed(Routes.ListeningStatistics);
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
                                    child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"listeningStatus_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                    child: Text("Listening Status",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
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
                            ],),),
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.Achivments);
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
                                  child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"achivments_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                  child: Text("Achivments",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
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
                          ]),
                      ),
                    ),
                    InkWell(
                        onTap: () => Get.toNamed(Routes.MyCasts),
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
                                    child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"myCasts_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                    child: Text("My Casts",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
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
                            ],),),
                    ),
                    InkWell(
                        onTap: () => Get.snackbar(
                          'Message',
                          'Coming soon...',
                          duration: 3.seconds,
                          snackPosition: SnackPosition.BOTTOM,
                          margin: const EdgeInsets.all(20),
                          showProgressIndicator: true,
                          isDismissible: true,
                          backgroundColor: Colors.blue,
                          colorText: Colors.white,
                        ),
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
                                    child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"market_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                    child: Text("Market",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
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
                            ]),
                        ),
                    ),
                    InkWell(
                        onTap: () => Get.snackbar(
                          'Message',
                          'Coming soon...',
                          duration: 3.seconds,
                          snackPosition: SnackPosition.BOTTOM,
                          margin: const EdgeInsets.all(20),
                          showProgressIndicator: true,
                          isDismissible: true,
                          backgroundColor: Colors.blue,
                          colorText: Colors.white,
                        ),
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
                                    child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"promotion_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                    child: Text("Promotion",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
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
                            ],),),
                    ),
                    InkWell(
                        onTap: () => Get.toNamed(Routes.Downloads),
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
                                    child: Container(width: 43,height: 43, child: SvgPicture.asset(svgPath+"downloads_golden.svg", fit: BoxFit.scaleDown), decoration: BoxDecoration(color: const Color(0xff060606).withOpacity(0.18),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6,left: 11,bottom: 6),
                                    child: Text("Downloads",style: Get.textTheme.headline1!.copyWith(fontSize: 14),),
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
                            ]),
                        ),
                    ),
                  ],
                ),
              ),
          );
        },
      ),
    );
  }

  _drawer(){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
        ],
      ),
    );
  }

}