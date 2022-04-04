import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controllers/downloads_controller.dart';

class Downloads extends GetView<DownloadsController> {

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(Get.width, 150), child: header(Get.width)),
      body: SingleChildScrollView(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [inProgress(Get.width, Get.height),downloaded(Get.width, Get.height)],
      )),
    );
  }

  header(w) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 33,right: 24,left: 24,bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Get.back(),
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
                  // SvgPicture.asset(
                  //   svgPath + "Downloads.svg",
                  //   width: 24,
                  //   height: 23,
                  //   color: Style.accentGold,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Text("Downloads", style: Get.textTheme.headline1),
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

  inProgress(w, h) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 21, left: 15),
          child: Text(
            "In Progress",
            style: Get.textTheme.headline2!.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        Flexible(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.downloadsList[0].data![0].episode!.season!.episodes!.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return controller.downloadsList[0].data![0].episode!.season!.episodes!.isEmpty ? 'There is no item!' : inProgressItem(index);
            },
          ),
        )
      ],
    );
  }

  inProgressItem(int index) {

    bool downloading = true;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
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
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text(
                        controller.downloadsList[0].data![0].episode!.season!.episodes![index].name!.length > 30
                            ? controller.downloadsList[0].data![0].episode!.season!.episodes![index].name!.substring(0, 30) + "..."
                            : controller.downloadsList[0].data![0].episode!.season!.episodes![index].name!,
                        style: Get.textTheme.headline1!.copyWith(fontSize: 14),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            downloading ? Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text("Downloading...",
                                      style: Get.textTheme.headline2!
                                          .copyWith(fontWeight: FontWeight.w500)),
                                ) : Padding(
                                   padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                      "Paused",
                                      style: Get.textTheme.headline2!
                                          .copyWith(color: Style.grayA1),
                                    ),
                                ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text("67%",
                                  style: downloading ? Get.textTheme.headline2!.copyWith(fontWeight: FontWeight.w500) : Get.textTheme.headline2!.copyWith(color: Style.grayA1)),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,right: 6,left: 6),
                          decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              downloading == true
                                  ? Stack(
                                      children: [
                                        SvgPicture.asset(
                                            svgPath + "download_prog.svg",
                                            width: 38,
                                            height: 38),
                                        Positioned.fill(child: Align(child: Text("65", style: Get.textTheme.overline))),
                                      ],
                                    )
                                  : SvgPicture.asset(
                                      Cicon.download,
                                      width: 19,
                                      height: 16,
                                      color: Style.grayc4,
                                    ),
                              downloading == false
                                  ? Text("Resume",
                                      style: Get.textTheme.headline2!
                                          .copyWith(fontWeight: FontWeight.w500))
                                  : Text("Pause",
                                      style: Get.textTheme.headline2!
                                          .copyWith(fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8,right: 12,left: 12),
            child: Divider(height: 1,color: Style.divider,thickness: 1,),
          )
        ],
      ),
    );
  }

  downloaded(w, h) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 21, left: 15,top: 18),
          child: Text(
            "Downloaded",
            style: Get.textTheme.headline2!.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        Flexible(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.downloadsList[0].data![0].episode!.season!.episodes!.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return controller.downloadsList[0].data![0].episode!.season!.episodes!.isEmpty ? 'There is no item!' : downloadedItem(index);
            },
          ),
        )
      ],
    );
  }

  downloadedItem(int index) {

    bool downloading = true;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 125,
              height: 125,
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
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.downloadsList[0].data![0].episode!.season!.episodes![index].name!.length > 30
                      ? controller.downloadsList[0].data![0].episode!.season!.episodes![index].name!.substring(0, 30) + "..."
                      : controller.downloadsList[0].data![0].episode!.season!.episodes![index].name!,
                  style: Get.textTheme.headline1!.copyWith(fontSize: 14),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text("Done!", style: Get.textTheme.headline1!.copyWith(fontSize: 14),
                          ),
                        ),
                      ]),
                    Container(
                      width: 85,
                      height: 50,
                      padding: const EdgeInsets.only(top: 5,bottom: 5,right: 6,left: 6),
                      decoration: BoxDecoration(color: Style.gray48op50,borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: const EdgeInsets.only(left: 2),
                            child: Positioned.fill(
                              child: Align(
                                child: SvgPicture.asset(
                                  Cicon.downloads_golden,
                                  width: 20,
                                  height: 20,
                                  color: Style.accentGold,
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: const EdgeInsets.only(right: 2),
                            child: InkWell(
                              onTap: () => debugPrint(''),
                              child: const Text("Delete", style: TextStyle(color: Colors.red, fontSize: 14)),
                            ),
                          ),
                        ]),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
