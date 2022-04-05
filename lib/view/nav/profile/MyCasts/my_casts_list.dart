import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../controllers/episode_controller.dart';
import '../../../../controllers/user_list_controller.dart';

class MyCastsList extends GetView<UserListController> {

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Style.background,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topTripleButtons(Get.width),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 13,top: 35,left: 26),
                  child: Text("Latest Podcasts:",style: Style.t_500_14g,),
                ),
                  _latestPodcastSection(Get.width),
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 0,left: 27),
                child: Text("All Episodes:",style: Style.t_500_14w),
              ),
              _searchBar(Get.width),
              Flexible(
                child: ListView.builder(
                itemCount: controller.userList[0].data![0].seasons!.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return controller.userList[0].data![0].seasons!.isEmpty ? 'There is no episode.' : _likedItem(Get.width,Get.height, index);
                }
              ),
              ),
            ],
          ),
        ));
  }

  _likedItem(w,h, int index) {

    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
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
                      controller.userList[index].data![index].seasons![index].episodes![index].name!.toString().length > 30
                          ? controller.userList[index].data![index].seasons![index].episodes![index].name!.toString().substring(0, 30) + "..."
                          : controller.userList[index].data![index].seasons![index].episodes![index].name!.toString(),
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
                              SvgPicture.asset(svgPath+"timer.svg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("1 : 26 : 45",
                                    style: Get.textTheme.headline6),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            children: [
                              SvgPicture.asset(svgPath+"heart_empty.svg"),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(controller.userList[index].data![index].seasons![index].episodes![index].likes_count!.toString(), style: Get.textTheme.headline6),
                              ),
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
                decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                    svgPath + "arrow_left.svg",
                    width: 12,
                    height: 6),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12,right: 12,left: 12),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          ),
        ],
      ),
    );

  }

  _topTripleButtons(w)
  {
    return  Padding(
      padding: const EdgeInsets.only(right: 24,left: 23, top: 48),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ElevatedButton(
              onPressed: () => debugPrint(""),
              child: const Text(
                "Add New Post",
                style: TextStyle(color: Color(0xff283034)),
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 58)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: const BorderSide(color: Color(0xffFFB800)))),
                  fixedSize: MaterialStateProperty.all(Size(w, 54)),
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xffFFB800)),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      color: Color(0xff283034),
                      fontSize: 18,
                      fontWeight: FontWeight.w500))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               ElevatedButton(
                  onPressed: () => debugPrint(""),
                  child: const Text(
                    "Drafts",
                    style: TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 17, horizontal: 0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.gray2F))),
                      fixedSize: MaterialStateProperty.all(Size(w/3.7, 54)),
                      backgroundColor:
                      MaterialStateProperty.all(Colors.white)),
                ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 11),
                 child: ElevatedButton(
                  onPressed: () => debugPrint(""),
                  child: const Text(
                    "Recorder",
                    style: TextStyle(color: Style.accentGold),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 17, horizontal: 0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.gray4D  ))),
                      fixedSize: MaterialStateProperty.all(Size(w/3.7, 54)),
                      backgroundColor:
                      MaterialStateProperty.all( Style.gray4D)),
              ),
               )  ,
             ElevatedButton(
                  onPressed: () => debugPrint(""),
                  child: const Text(
                    "Editor",
                    style: TextStyle(color: Style.accentGold),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 17, horizontal: 0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.gray4D  ))),
                      fixedSize: MaterialStateProperty.all(Size(w/3.7, 54)),
                      backgroundColor:
                      MaterialStateProperty.all( Style.gray4D)),
                ),


                 ],
          )
        ],
      ),
    );
  }

  _latestPodcastSection(w) {

    return SizedBox(
      width: w,
      height: 220,
      child: ListView.builder(
        itemCount: controller.userList[0].data![0].seasons!.length,
        itemBuilder: (context, index) {
          return  controller.userList[0].data![0].seasons!.isNotEmpty ? _podcastItem(index) : Text('Episode does not exist!', style: Get.textTheme.headline1!.copyWith(fontSize: 14));
        },
        scrollDirection: Axis.horizontal,
      ),

    )
    ;
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Row(
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
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Text("Profile", style: Get.textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }

_searchBar(w)
{
  return Padding(
    padding: const EdgeInsets.only(top: 20,right: 14,left: 14),
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
                    hintStyle: TextStyle(color: Get.theme.hintColor),
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
  );

}
  
  
  _podcastItem(int index){

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
                Text(controller.userList[0].data![0].seasons![index].podcast!.title!.toString().length > 30
                    ? controller.userList[0].data![0].seasons![index].podcast!.title!.toString().substring(0, 30) + "..."
                    : controller.userList[0].data![0].seasons![index].podcast!.title!.toString(), style: Style.t_500_14w,),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(controller.userList[0].data![0].seasons![index].podcast!.description!.toString().length > 30
                      ? controller.userList[0].data![0].seasons![index].podcast!.description!.toString().substring(0, 30) + "..."
                      : controller.userList[0].data![0].seasons![index].podcast!.description!.toString(), style: Style.t_400_12_gray,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
