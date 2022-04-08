import 'package:castalk/models/analytics_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/analytics_api.dart';

class AnalyticsController extends GetxController with StateMixin<List<AnalyticsModel>>{

  final Analytics _analytics = Analytics();
  late List<AnalyticsModel> analyticsList = [];
  late RxString listensK = '0'.obs;
  late RxString followersK = '0'.obs;
  late RxString postsK = '0'.obs;
  late RxString playsK = '0'.obs;
  RxBool loadingAnalytics = false.obs;
  //
  @override
  onInit() {
    getAnalyticsData();
    super.onInit();
  }
  //
  getAnalyticsData() async{
    await _analytics.analytics(token: GetStorage().read('TokenKey')).then((l) => {
      analyticsList = List<AnalyticsModel>.from(l.map((model) => AnalyticsModel.fromJson(model))),
      debugPrint('analyticsList---> $analyticsList'),
      listensK.value = '${(analyticsList[0].data!.listens! / 1000).toStringAsFixed(0)}K',
      followersK.value = '${(analyticsList[0].data!.followers! / 1000).toStringAsFixed(0)}K',
      postsK.value = '${(analyticsList[0].data!.posts! / 1000).toStringAsFixed(0)}K',
      playsK.value = '${(analyticsList[0].data!.plays! / 1000).toStringAsFixed(0)}K',
      loadingAnalytics.value = true,
    });
  }

}