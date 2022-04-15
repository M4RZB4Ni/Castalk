import 'package:castalk/cicon.dart';
import 'package:castalk/controllers/achivments_controller.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Achivments extends GetView<AchivmentsController> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => Scaffold(
              appBar: PreferredSize(
                  preferredSize: Size(Get.width, 100),
                  child: header(Get.width)),
              backgroundColor: Style.background,
              body: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                        child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                          _firstPlace(Get.width, Get.height),
                        ])),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 12, left: 31, top: 31),
                          child: Text(
                            "Achieved:",
                            style: Style.t_500_14w,
                          ),
                        ),
                        Flexible(
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              _achivedItem(Get.width, Get.height),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
            ),
        onLoading: Container(
            width: Get.width,
            height: Get.height,
            color: const Color(0xff242424)));
  }

  _firstPlace(w, h) {
    return SizedBox(
      width: w,
      height: h / 2,
      child: ListView.builder(
        //itemCount: controller.achivmentList[0].data!.length,
        itemCount: 0,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _firstPlaceItem(w, h, index),
          );
        },
      ),
    );
  }

  _firstPlaceItem(w, h, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 73,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(Cicon.newspaper),
            ),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 21, right: 14, left: 0, bottom: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   '${(controller.achivmentList[0].data![index].target!.toString())} Days in a row',
                      //   style: Style.t_400_12w,
                      // ),
                      RichText(
                          text: TextSpan(children: [
                        // TextSpan(
                        //     text: controller
                        //         .achivmentList[0].data![index].progress!
                        //         .toString(),
                        //     style: Style.t_500_14w),
                        // TextSpan(
                        //     text:
                        //         ' / ${(controller.achivmentList[0].data![index].target!.toString())} Days',
                        //     style: Style.t_500_14g)
                      ]))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: 300,
                  height: 6,
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Style.accentGold),
                      backgroundColor: Style.gray58,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  _achived(w, h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12, left: 31, top: 31),
          child: Text(
            "Achieved:",
            style: Style.t_500_14w,
          ),
        ),
        SizedBox(
          width: w,
          height: h / 2,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: _achivedItem(w, h));
            },
          ),
        )
      ],
    );
  }

  _achivedItem(w, h) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray27,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 6, bottom: 6),
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
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Congrats!", style: Style.t_700_24g),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SvgPicture.asset(Cicon.tick),
                      ),
                      Text(
                        "You Reached 100 Followers",
                        style: Style.t_400_12_gray,
                      ),
                    ],
                  ),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 9, top: 6, bottom: 6),
              child: Container(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(Cicon.share, width: 18, height: 18),
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Style.gray48,
                  borderRadius: BorderRadius.circular(12),
                ), /* add child content here */
              ),
            )
          ],
        ),
      ),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
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
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Text("Achivments", style: Get.textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }
}
