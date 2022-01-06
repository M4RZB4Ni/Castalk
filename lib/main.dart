import 'package:castalk/style.dart';
import 'package:castalk/view/editor/editor.dart';
import 'package:castalk/view/editor/exported.dart';
import 'package:castalk/view/editor/saved_projects.dart';
import 'package:castalk/view/intro_signin/add_account_info.dart';
import 'package:castalk/view/intro_signin/congratulations.dart';
import 'package:castalk/view/nav/notifications.dart';
import 'package:castalk/view/nav/home/home_feed.dart';
import 'package:castalk/view/nav/nav_mother.dart';
import 'package:castalk/view/nav/profile/MyCasts/my_casts.dart';
import 'package:castalk/view/nav/profile/achivments.dart';
import 'package:castalk/view/nav/profile/downloads.dart';
import 'package:castalk/view/nav/profile/liked_episodes.dart';
import 'package:castalk/view/nav/profile/listening_statistics.dart';
import 'package:castalk/view/nav/profile/market/market.dart';
import 'package:castalk/view/nav/profile/market/products.dart';
import 'package:castalk/view/nav/profile/market/purchases.dart';
import 'package:castalk/view/nav/profile/monetization.dart';
import 'package:castalk/view/nav/profile/playlist.dart';
import 'package:castalk/view/nav/profile/playlist_episodes.dart';
import 'package:castalk/view/nav/profile/profile.dart';
import 'package:castalk/view/nav/profile/profile_edit.dart';
import 'package:castalk/view/nav/profile/promotion.dart';
import 'package:castalk/view/nav/profile/promotion_analytics.dart';
import 'package:castalk/view/nav/profile/promotion_list.dart';
import 'package:castalk/view/nav/profile/request_verify_badge.dart';
import 'package:castalk/view/new_post/new_podcast.dart';
import 'package:castalk/view/new_post/new_post.dart';
import 'package:castalk/view/new_post/new_season.dart';
import 'package:castalk/view/order_process/cart_proceed.dart';
import 'package:castalk/view/order_process/choose_subscription.dart';
import 'package:castalk/view/order_process/payment_response.dart';
import 'package:castalk/view/other_user_profile.dart';
import 'package:castalk/view/owned_section/owned_episodes.dart';
import 'package:castalk/view/owned_section/owned_podcast.dart';
import 'package:castalk/view/owned_section/owned_seasons.dart';
import 'package:castalk/view/player/comments.dart';
import 'package:castalk/view/player/drive_mode.dart';
import 'package:castalk/view/intro_signin/enter_code.dart';
import 'package:castalk/view/intro_signin/intro.dart';
import 'package:castalk/view/post_draft/draft_item.dart';
import 'package:castalk/view/post_draft/drafts.dart';
import 'package:castalk/view/presentation.dart';
import 'package:castalk/view/product_view/episode_view.dart';
import 'package:castalk/view/product_view/podcast_view.dart';
import 'package:castalk/view/product_view/season_view.dart';

import 'package:castalk/view/player/player.dart';

import 'package:castalk/view/player/save_to_playlist.dart';
import 'package:castalk/view/intro_signin/signin.dart';
import 'package:castalk/view/recorder/recorded_list.dart';
import 'package:castalk/view/recorder/recorder.dart';
import 'package:castalk/view/set_plan.dart';
import 'package:castalk/view/wallet/deposit.dart';
import 'package:castalk/view/wallet/transaction_details.dart';
import 'package:castalk/view/wallet/transaction_history.dart';
import 'package:castalk/view/wallet/wallet.dart';
import 'package:castalk/view/wallet/wallet_analytics.dart';
import 'package:castalk/view/wallet/wallet_nav.dart';
import 'package:castalk/view/wallet/withdraw.dart';

import 'package:flutter/material.dart';
import 'view/nav/explore/explore.dart';
import 'view/nav/home/home_items_expanded.dart';
import 'view/new_post/new_episode.dart';

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
        elevatedButtonTheme: ElevatedButtonThemeData(
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
      initialRoute: "/ChooseSubscription",
      routes: {
        "/Intro":(context) => const Directionality(textDirection: TextDirection.ltr, child: Intro()),
        "/SignIn":(context) => const Directionality(textDirection: TextDirection.ltr, child: SignIn()),
        "/EnterCode":(context) =>  Directionality(textDirection: TextDirection.ltr, child: EnterCode(phoneNumber: '+989185584088')),
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
        "/ProfileEdit":(context) => const Directionality(textDirection: TextDirection.ltr, child: ProfileEdit()),
        "/ListeningStatistics":(context) => const Directionality(textDirection: TextDirection.ltr, child: ListeningStatistics()),
        "/MyCasts":(context) => const Directionality(textDirection: TextDirection.ltr, child: MyCasts()),
        "/OwnedPodcast":(context) => const Directionality(textDirection: TextDirection.ltr, child: OwnedPodcast()),
        "/OwnedSeasons":(context) => const Directionality(textDirection: TextDirection.ltr, child: OwnedSeasons()),
        "/OwnedEpisodes":(context) => const Directionality(textDirection: TextDirection.ltr, child: OwnedEpisodes()),
        "/HomeFeed":(context) => const Directionality(textDirection: TextDirection.ltr, child: HomeFeed()),
        "/HomeItemsExpanded":(context) => const Directionality(textDirection: TextDirection.ltr, child: HomeItemsExpanded()),
        "/Explore":(context) => const Directionality(textDirection: TextDirection.ltr, child: Explore()),
        "/PodcastView":(context) => const Directionality(textDirection: TextDirection.ltr, child: PodcastView()),
        "/SeasonView":(context) => const Directionality(textDirection: TextDirection.ltr, child: SeasonView()),
        "/EpisodeView":(context) => const Directionality(textDirection: TextDirection.ltr, child: EpisodeView()),
        "/Notifications":(context) => const Directionality(textDirection: TextDirection.ltr, child: Notifications()),
        "/OtherUserProfile":(context) => const Directionality(textDirection: TextDirection.ltr, child: OtherUserProfile()),
        "/Comments":(context) => const Directionality(textDirection: TextDirection.ltr, child: Comments()),
        "/Editor":(context) => const Directionality(textDirection: TextDirection.ltr, child: Editor()),
        "/Exported":(context) => const Directionality(textDirection: TextDirection.ltr, child: Exported()),
        "/SavedProjects":(context) => const Directionality(textDirection: TextDirection.ltr, child: SavedProjects()),
        "/RecordedList":(context) => const Directionality(textDirection: TextDirection.ltr, child: RecordedList()),
        "/Recorder":(context) => const Directionality(textDirection: TextDirection.ltr, child: Recorder()),
        "/Wallet":(context) => const Directionality(textDirection: TextDirection.ltr, child: Wallet()),
        "/NavMother":(context) => const Directionality(textDirection: TextDirection.ltr, child: NavMother()),
        "/WalletNav":(context) => const Directionality(textDirection: TextDirection.ltr, child: WalletNav()),
        "/TransactionHistory":(context) => const Directionality(textDirection: TextDirection.ltr, child: TransactionHistory()),
        "/WalletAnalytics":(context) => const Directionality(textDirection: TextDirection.ltr, child: WalletAnalytics()),
        "/Deposit":(context) => const Directionality(textDirection: TextDirection.ltr, child: Deposit()),
        "/Withdraw":(context) => const Directionality(textDirection: TextDirection.ltr, child: Withdraw()),
        "/TransactionDetails":(context) => const Directionality(textDirection: TextDirection.ltr, child: TransactionDetails()),
        "/SetPlan":(context) => const Directionality(textDirection: TextDirection.ltr, child: SetPlan()),
        "/Drafts":(context) => const Directionality(textDirection: TextDirection.ltr, child: Drafts()),
        "/DraftItem":(context) => const Directionality(textDirection: TextDirection.ltr, child: DraftItem()),
        "/NewPost":(context) => const Directionality(textDirection: TextDirection.ltr, child: NewPost()),
        "/NewPodcast":(context) => const Directionality(textDirection: TextDirection.ltr, child: NewPodcast()),
        "/NewSeason":(context) => const Directionality(textDirection: TextDirection.ltr, child: NewSeason()),
        "/NewEpisode":(context) => const Directionality(textDirection: TextDirection.ltr, child: NewEpisode()),
        "/ChooseSubscription":(context) => const Directionality(textDirection: TextDirection.ltr, child: ChooseSubscription()),
        "/CartProceed":(context) => const Directionality(textDirection: TextDirection.ltr, child: CartProceed()),
        "/PaymentResponse":(context) => const Directionality(textDirection: TextDirection.ltr, child: PaymentResponse()),
        "/Presentation":(context) => const Directionality(textDirection: TextDirection.ltr, child: Presentation()),
      },

    );
  }
}
