import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/analytics_api.dart';
import '../models/listening_statistics_model.dart';

class ListeningStatisticsController extends GetxController with StateMixin<List<ListeningAnalyticsModel>>{

  final Analytics _analytics = Analytics();

  RxBool loadingListeningStatistics = false.obs;
  late ListeningAnalyticsModel analyticsModel;

  @override
  onInit() {
    getListeningAnalyticsData();
    super.onInit();
  }

  getListeningAnalyticsData() async {
    analyticsModel= await _analytics.listeningAnalytics(token: GetStorage().read('TokenKey'));
    loadingListeningStatistics.value=true;
  }

}