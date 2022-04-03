import 'package:castalk/cicon.dart';
import 'package:castalk/controllers/play_list_controller.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../controllers/episode_controller.dart';

class PlayListEpisodes extends GetView<PlayListController> {
  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(Get.width, 180), child: header(Get.width)),
      body: ListView.builder(
        itemCount: controller.playList[0].data!.data![0].episodes!.length,
        itemBuilder: (context, index) {
        return controller.playList[0].data!.data![index].episodes!.isNotEmpty ? _likedItem(index, Get.width, Get.height) : Text('PlayList does not exist!', style: Get.textTheme.headline1!.copyWith(fontSize: 14));
      },),

    );
  }

  _likedItem(int index, w, h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                height: 110,
                child: Stack(
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
                  ],
                ),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.playList[0].data!.data![index].episodes![index].name!,
                      style: Get.textTheme.headline1!.copyWith(fontSize: 14),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset(Cicon.timer),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("1 : 26 : 45",
                                    style: Get.textTheme.headline6),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(Cicon.heart_empty),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                        controller.playList[0].data!.data![index].episodes![index].likes_count!.toString(),
                                        style: Get.textTheme.headline6),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text("2 days ago",style: Style.t_400_12_grayA1,),
                              )
                            ],
                          ),
                        ),
                      ]),
                  ],
                ),
              )),
              Container(
                height: 96,
                width: 44,

                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                    svgPath + "arrow_left.svg",
                    width: 12,
                    height: 6),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12,right: 12,left: 12),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          )
        ],
      ),
    );

  }
/*  Container(
  height: 110,
  padding: const EdgeInsets.only(top: 5,bottom: 5,right: 6,left: 6),
  decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
  child: SvgPicture.asset(
  svgPath + "arrow_left.svg",
  width: 24,
  height: 12),
  )*/

  header(w) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36,right: 24,left: 24,bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: Container(
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
              ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Text("Playlist", style: Get.textTheme.headline1),
                  ),
                ],
              ),
              const SizedBox(
                width: 44,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15,left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 44,
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
                          TextStyle(color: Get.theme.hintColor),
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
    );
  }


}