import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../controllers/mycasts_controller.dart';
import 'my_casts_analytics.dart';
import 'my_casts_list.dart';

class MyCasts extends GetView<MyCastsController> {

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(Get.width, 130), child: header(Get.width)),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          MyCastsList(),
          MyCastsAnalytics(),
        ],),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 33, left: 24),
      child: Column(
        children: [
          Row(
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

                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text("My Casts", style: Get.textTheme.headline1),
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
            child:TabBar(
                labelStyle: Get.textTheme.headline1,
                controller: controller.tabController,
                indicatorColor: Style.accentGold,
                tabs: const [
                  Tab(text: "List"),
                  Tab(text: "Analytics"),
                ]),
          ),


        ],
      ),
    );
  }

}