import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/analytics_api.dart';
import '../models/listening_statistics_model.dart';

class ListeningStatisticsController extends GetxController with StateMixin<List<ListeningAnalyticsModel>>{

  final Analytics _analytics = Analytics();
  late List<ListeningAnalyticsModel> listeningAnalyticsList = [];
  RxBool loadingListeningStatistics = false.obs;
  //
  @override
  onInit() {
    getListeningAnalyticsData();
    super.onInit();
  }
  //
  getListeningAnalyticsData() async{
    await _analytics.listeningAnalytics(token: GetStorage().read('token')).then((l) => {
      listeningAnalyticsList = List<ListeningAnalyticsModel>.from(l.map((model) => ListeningAnalyticsModel.fromJson(model))),
      debugPrint('listeningAnalyticsList---> $listeningAnalyticsList'),
      loadingListeningStatistics.value = true,
    });
  }

}