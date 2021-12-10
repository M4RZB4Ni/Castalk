import 'package:castalk/style.dart';
import 'package:castalk/view/intro_signin/add_account_info.dart';
import 'package:castalk/view/intro_signin/congratulations.dart';
import 'package:castalk/view/player/drive_mode.dart';
import 'package:castalk/view/intro_signin/enter_code.dart';
import 'package:castalk/view/intro_signin/intro.dart';
import 'package:castalk/view/profile/monetization.dart';
import 'package:castalk/view/player/player.dart';
import 'package:castalk/view/profile/achivments.dart';
import 'package:castalk/view/profile/downloads.dart';
import 'package:castalk/view/profile/liked_episodes.dart';
import 'package:castalk/view/profile/market/market.dart';
import 'package:castalk/view/profile/market/products.dart';
import 'package:castalk/view/profile/market/purchases.dart';
import 'package:castalk/view/profile/playlist.dart';
import 'package:castalk/view/profile/playlist_episodes.dart';
import 'package:castalk/view/profile/profile.dart';
import 'package:castalk/view/player/save_to_playlist.dart';
import 'package:castalk/view/intro_signin/signin.dart';
import 'package:castalk/view/profile/promotion.dart';
import 'package:castalk/view/profile/promotion_analytics.dart';
import 'package:castalk/view/profile/promotion_list.dart';
import 'package:castalk/view/profile/request_verify_badge.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        unselectedWidgetColor: Style.accentGold,
        disabledColor: Style.accentGold,
        primaryColor: const Color(0xff242424),
        backgroundColor: const Color(0xff242424),
        hintColor:const Color(0xff797979),
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor:Colors.transparent,elevation: 0),
        focusColor: const Color(0xffFFB800),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xffFFB800)),
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 24),
          bodyText1: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),
            overline: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w500,fontSize: 12),
            headline4: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w700,fontSize: 24),
            bodyText2: TextStyle(color: Color(0xffA6A6A6),fontWeight: FontWeight.w400,fontSize: 14),
            subtitle1: TextStyle(color: Color(0xff9D9D9D),fontWeight: FontWeight.w400,fontSize: 14),
            subtitle2: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w400,fontSize: 18),
            headline2: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w400,fontSize: 14),
            headline5: TextStyle(color: Color(0xff283034),fontWeight: FontWeight.w500,fontSize: 18),
            headline6: TextStyle(color: Style.grayA1,fontWeight: FontWeight.w400,fontSize: 12),
            button: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w400,fontSize: 18),
          headline3:TextStyle(color: Color(0xff3A3A3A),fontWeight: FontWeight.w700,fontSize: 18),
        ),
        elevatedButtonTheme:  ElevatedButtonThemeData(
            style:ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: ThemeData().colorScheme.secondary)
                    )
                ),
                backgroundColor:MaterialStateProperty.all(ThemeData().colorScheme.secondary),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) )
        ),
        textButtonTheme: TextButtonThemeData(
            style:ButtonStyle(backgroundColor:MaterialStateProperty.all(ThemeData().backgroundColor),textStyle: MaterialStateProperty.all(TextStyle(color: ThemeData().colorScheme.secondary,fontSize: 18,fontWeight: FontWeight.w400)) )
        )
      ),
      title: 'Castalk',
      debugShowCheckedModeBanner: true,
      initialRoute: "/RequestVerifyBadge",
      routes: {
        "/Intro":(context) => const Directionality(textDirection: TextDirection.ltr, child: Intro()),
        "/SignIn":(context) => const Directionality(textDirection: TextDirection.ltr, child: SignIn()),
        "/EnterCode":(context) =>  Directionality(textDirection: TextDirection.ltr, child: EnterCode(phoneNumber: '+989185584088',)),
        "/AddAccountInfo":(context) => const Directionality(textDirection: TextDirection.ltr, child: AddAccountInfo()),
        "/Congratulations":(context) => const Directionality(textDirection: TextDirection.ltr, child: Congratulations()),
        "/Player":(context) => const Directionality(textDirection: TextDirection.ltr, child: Player()),
        "/Profile":(context) => const Directionality(textDirection: TextDirection.ltr, child: Profile()),
        "/DriveMode":(context) => const Directionality(textDirection: TextDirection.ltr, child: DriveMode()),
        "/SavePlayList":(context) => const Directionality(textDirection: TextDirection.ltr, child: SavePlayList()),
        "/Playlist":(context) => const Directionality(textDirection: TextDirection.ltr, child: Playlist()),
        "/Downloads":(context) => const Directionality(textDirection: TextDirection.ltr, child: Downloads()),
        "/LikedEpisodes":(context) => const Directionality(textDirection: TextDirection.ltr, child: LikedEpisodes()),
        "/PlayListEpisodes":(context) => const Directionality(textDirection: TextDirection.ltr, child: PlayListEpisodes()),
        "/Market":(context) => const Directionality(textDirection: TextDirection.ltr, child: Market()),
        "/Products":(context) => const Directionality(textDirection: TextDirection.ltr, child: Products()),
        "/Purchases":(context) => const Directionality(textDirection: TextDirection.ltr, child: Purchases()),
        "/PromotionList":(context) => const Directionality(textDirection: TextDirection.ltr, child: PromotionList()),
        "/Promotion":(context) => const Directionality(textDirection: TextDirection.ltr, child: Promotion()),
        "/PromotionAnalytics":(context) => const Directionality(textDirection: TextDirection.ltr, child: PromotionAnalytics()),
        "/Achivments":(context) => const Directionality(textDirection: TextDirection.ltr, child: Achivments()),
        "/Monetization":(context) => const Directionality(textDirection: TextDirection.ltr, child: Monetization()),
        "/RequestVerifyBadge":(context) => const Directionality(textDirection: TextDirection.ltr, child: RequestVerifyBadge()),
      },

    );
  }
}
