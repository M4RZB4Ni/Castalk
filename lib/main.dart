import 'package:castalk/controllers/likes_controller.dart';
import 'package:castalk/routes/pages.dart';
import 'package:castalk/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controllers/achivments_controller.dart';
import 'controllers/add_account_info_controller.dart';
import 'controllers/analytics_controller.dart';
import 'controllers/auth_controller.dart';
import 'controllers/congratulations_controller.dart';
import 'controllers/downloads_controller.dart';
import 'controllers/episode_controller.dart';
import 'controllers/followers_controller.dart';
import 'controllers/intro_controller.dart';
import 'controllers/listening_statistics_controller.dart';
import 'controllers/market_controller.dart';
import 'controllers/monetization_controller.dart';
import 'controllers/motion_controller.dart';
import 'controllers/mycasts_controller.dart';
import 'controllers/play_list_controller.dart';
import 'controllers/profile_edit_controller.dart';
import 'controllers/profile_single_controller.dart';
import 'controllers/user_list_controller.dart';
import 'controllers/verify_badge_controller.dart';
import 'controllers/wallet_controller.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void buildControllers() {
    Get.put<AuthController>(AuthController());

    Get.lazyPut<IntroController>(
      () => IntroController(),
      fenix: true,
    );

    Get.lazyPut<AddAcountInfoController>(
      () => AddAcountInfoController(),
      fenix: true,
    );

    //Get.put(CongratulationsController());
    Get.lazyPut<CongratulationsController>(
      () => CongratulationsController(),
      fenix: true,
    );
    Get.lazyPut<AnalyticsController>(
      () => AnalyticsController(),
      fenix: true,
    );

    //Get.put(ProfileController());
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
      fenix: true,
    );
    Get.lazyPut<FollowersController>(
      () => FollowersController(),
      fenix: true,
    );

    Get.lazyPut<EpisodeController>(
      () => EpisodeController(),
      fenix: true,
    );

    Get.lazyPut<MotionController>(
      () => MotionController(),
      fenix: true,
    );

    Get.lazyPut<PlayListController>(
      () => PlayListController(),
      fenix: true,
    );

    Get.lazyPut<ListeningStatisticsController>(
      () => ListeningStatisticsController(),
      fenix: true,
    );

    Get.lazyPut<ProlfileEditController>(
      () => ProlfileEditController(),
      fenix: true,
    );

    Get.lazyPut<MyCastsController>(
      () => MyCastsController(),
      fenix: true,
    );

    Get.lazyPut<AchivmentsController>(
      () => AchivmentsController(),
      fenix: true,
    );

    Get.lazyPut<MarketController>(
      () => MarketController(),
      fenix: true,
    );

    Get.lazyPut<UserListController>(
      () => UserListController(),
      fenix: true,
    );

    Get.lazyPut<DownloadsController>(
      () => DownloadsController(),
      fenix: true,
    );

    Get.lazyPut<WalletController>(
      () => WalletController(),
      fenix: true,
    );

    Get.lazyPut<MonetizationController>(
      () => MonetizationController(),
      fenix: true,
    );

    Get.lazyPut<VerifyBadgeController>(
      () => VerifyBadgeController(),
      fenix: true,
    );

    Get.lazyPut<ProlfileEditController>(
      () => ProlfileEditController(),
      fenix: true,
    );
    Get.lazyPut<LikesController>(
      () => LikesController(),
      fenix: true,
    );
  }

  const MyApp({Key? key}) : super(key: key);
  //flutter pub run build_runner build --delete-conflicting-outputs

  @override
  Widget build(BuildContext context) {
    buildControllers();
    return GetMaterialApp(
      title: 'Castalk',
      initialRoute: Pages.INITIAL_ROUTE,
      //initialBinding: CastalkBindings(),
      getPages: Pages.pages,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          unselectedWidgetColor: Style.accentGold,
          disabledColor: Style.accentGold,
          primaryColor: const Color(0xff242424),
          backgroundColor: const Color(0xff242424),
          hintColor: const Color(0xff797979),
          bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.transparent, elevation: 0),
          focusColor: const Color(0xffFFB800),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xffFFB800)),
          textTheme: const TextTheme(
            headline1: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
            bodyText1: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
            overline: TextStyle(
                color: Color(0xffFFB800),
                fontWeight: FontWeight.w500,
                fontSize: 12),
            headline4: TextStyle(
                color: Color(0xffFFB800),
                fontWeight: FontWeight.w700,
                fontSize: 24),
            bodyText2: TextStyle(
                color: Color(0xffA6A6A6),
                fontWeight: FontWeight.w400,
                fontSize: 14),
            subtitle1: TextStyle(
                color: Color(0xff9D9D9D),
                fontWeight: FontWeight.w400,
                fontSize: 14),
            subtitle2: TextStyle(
                color: Color(0xffFFB800),
                fontWeight: FontWeight.w400,
                fontSize: 18),
            headline2: TextStyle(
                color: Color(0xffFFB800),
                fontWeight: FontWeight.w400,
                fontSize: 14),
            headline5: TextStyle(
                color: Color(0xff283034),
                fontWeight: FontWeight.w500,
                fontSize: 18),
            headline6: TextStyle(
                color: Style.grayA1, fontWeight: FontWeight.w400, fontSize: 12),
            button: TextStyle(
                color: Color(0xffFFB800),
                fontWeight: FontWeight.w400,
                fontSize: 18),
            headline3: TextStyle(
                color: Color(0xff3A3A3A),
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 58)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(
                              color: ThemeData().colorScheme.secondary))),
                  backgroundColor: MaterialStateProperty.all(
                      ThemeData().colorScheme.secondary),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      color: Color(0xff283034),
                      fontSize: 18,
                      fontWeight: FontWeight.w500)))),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(ThemeData().backgroundColor), textStyle: MaterialStateProperty.all(TextStyle(color: ThemeData().colorScheme.secondary, fontSize: 18, fontWeight: FontWeight.w400))))),
    );
  }
}
