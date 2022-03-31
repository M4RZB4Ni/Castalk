import 'package:castalk/models/analytics_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/analytics_api.dart';

class AnalyticsController extends GetxController with StateMixin<List<AnalyticsModel>>{

  final Analytics _analytics = Analytics();
  late List<AnalyticsModel> analyticsList = [];
  //
  @override
  onInit() {
    getAnalyticsData();
    super.onInit();
  }
  //
  getAnalyticsData() async{
    await _analytics.analytics(token: GetStorage().read('token')).then((l) => {
      analyticsList = List<AnalyticsModel>.from(l.map((model) => AnalyticsModel.fromJson(model))),
      debugPrint('analyticsList---> $analyticsList'),
    });
  }

}