import 'package:castalk/routes/routes.dart';
import 'package:castalk/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controllers/play_list_controller.dart';

class Playlist extends GetView<PlayListController> {

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Obx(() => controller.loadingPlayList.value ? Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(Get.width, 180), child: header(Get.width)),
      body: GridView.builder(
        itemCount: controller.playList[0].data!.data!.length,
        padding: const EdgeInsets.symmetric(horizontal: 34),
        itemBuilder: (context, index) {
          return SizedBox(width: 130, height: 180, child: playlistItem(index));
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2 / 2.1,mainAxisSpacing: 31,crossAxisSpacing: 33),
      ),
    ) : const CircularProgressIndicator());
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
                  SvgPicture.asset(
                    svgPath + "playlist.svg",
                    width: 24,
                    height: 23,
                    color: Style.accentGold,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child:
                        Text("Save to Playlist", style: Get.textTheme.headline1),
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
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            isDense: false,
                            contentPadding: EdgeInsets.only(
                                top: 12, bottom: 12, left: 19),
                            hintText: "Type to Search...",
                            hintStyle:
                                TextStyle(color: Color(0xff797979)),
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
      ),
    );
  }

  playlistItem(int index) {

    return InkWell(
      onTap: (){
        Get.toNamed(Routes.PlayListEpisodes);
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Transform.rotate(
                      angle: -0.2,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          clipBehavior: Clip.antiAlias,
                          elevation: 5,
                          shadowColor: Colors.black.withOpacity(0.5),
                          child: Image.network(
                            //model!.imageUrl,
                            'https://picsum.photos/125/125',
                            fit: BoxFit.cover,
                            height: 125,
                            width: 125,
                          ))),
                ),
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Transform.rotate(
                      angle: 0.2,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          clipBehavior: Clip.antiAlias,
                          elevation: 5,
                          shadowColor: Colors.black.withOpacity(0.5),
                          child: Image.network(
                            //model!.imageUrl,
                            'https://picsum.photos/120/120',
                            fit: BoxFit.cover,
                            height: 120,
                            width: 120,
                          ))),
                ),
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Transform.rotate(
                      angle: -0.2,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          clipBehavior: Clip.antiAlias,
                          elevation: 5,
                          shadowColor: Colors.black.withOpacity(0.5),
                          child: Image.network(
                            'https://picsum.photos/123/123',
                            fit: BoxFit.cover,
                            height: 123,
                            width: 123,
                          ))),
                ),
              ],
            ),
            Text(controller.playList[index].data!.data!.first.title!.toString(), style: Get.textTheme.headline2!.copyWith(fontWeight: FontWeight.w500, color: Colors.white),),
            Text(controller.playList[index].data!.data!.first.description!.toString(), style: Get.textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
