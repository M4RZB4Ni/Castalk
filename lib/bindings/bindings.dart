import 'package:castalk/controllers/achivments_controller.dart';
import 'package:castalk/controllers/analytics_controller.dart';
import 'package:castalk/controllers/congratulations_controller.dart';
import 'package:castalk/controllers/downloads_controller.dart';
import 'package:castalk/controllers/followers_controller.dart';
import 'package:castalk/controllers/market_controller.dart';
import 'package:castalk/controllers/motion_controller.dart';
import 'package:castalk/controllers/mycasts_controller.dart';
import 'package:castalk/controllers/play_list_controller.dart';
import 'package:castalk/controllers/profile_single_controller.dart';
import 'package:castalk/controllers/user_list_controller.dart';
import 'package:castalk/controllers/wallet_controller.dart';
import 'package:get/get.dart';
import '../controllers/add_account_info_controller.dart';
import '../controllers/auth_controller.dart';
import '../controllers/episode_controller.dart';
import '../controllers/intro_controller.dart';
import '../controllers/listening_statistics_controller.dart';
import '../controllers/monetization_controller.dart';
import '../controllers/profile_edit_controller.dart';

class CastalkBindings implements Bindings{
  @override
  void dependencies(){
    Get.put(AuthController());
    Get.lazyPut(() => IntroController(),);
    Get.lazyPut(() =>CongratulationsController());
    Get.lazyPut(() =>AddAcountInfoController());
    Get.lazyPut(() =>ProfileController());
    Get.lazyPut(() =>FollowersController());
    Get.lazyPut(() =>EpisodeController());
    Get.lazyPut(() =>MotionController());
    Get.lazyPut(() =>PlayListController());
    Get.lazyPut(() =>ListeningStatisticsController());
    Get.lazyPut(() =>ProlfileEditController());
    Get.lazyPut(() =>MyCastsController());
    Get.lazyPut(() =>AchivmentsController());
    Get.lazyPut(() =>MarketController());
    Get.lazyPut(() =>AnalyticsController());
    Get.lazyPut(() =>UserListController());
    Get.lazyPut(() =>DownloadsController());
    Get.lazyPut(() =>WalletController());
    Get.lazyPut(() =>MonetizationController());
    //Get.lazyPut(() => MonetizationController());
  }
}