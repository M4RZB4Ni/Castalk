import 'package:castalk/routes/routes.dart';
import 'package:castalk/view/editor/editor.dart';
import 'package:castalk/view/editor/exported.dart';
import 'package:castalk/view/editor/saved_projects.dart';
import 'package:castalk/view/intro_signin/add_account_info.dart';
import 'package:castalk/view/intro_signin/congratulations.dart';
import 'package:castalk/view/intro_signin/enter_code.dart';
import 'package:castalk/view/intro_signin/intro.dart';
import 'package:castalk/view/intro_signin/signin.dart';
import 'package:castalk/view/nav/explore/explore.dart';
import 'package:castalk/view/nav/home/home_feed.dart';
import 'package:castalk/view/nav/home/home_items_expanded.dart';
import 'package:castalk/view/nav/nav_mother.dart';
import 'package:castalk/view/nav/notifications.dart';
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
import 'package:castalk/view/new_post/new_episode.dart';
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
import 'package:castalk/view/player/player.dart';
import 'package:castalk/view/player/save_to_playlist.dart';
import 'package:castalk/view/post_draft/draft_item.dart';
import 'package:castalk/view/post_draft/drafts.dart';
import 'package:castalk/view/presentation.dart';
import 'package:castalk/view/product_view/episode_view.dart';
import 'package:castalk/view/product_view/podcast_view.dart';
import 'package:castalk/view/product_view/season_view.dart';
import 'package:castalk/view/recorder/recorded_list.dart';
import 'package:castalk/view/recorder/recorder.dart';
import 'package:castalk/view/set_plan.dart';
import 'package:castalk/view/splash.dart';
import 'package:castalk/view/wallet/deposit.dart';
import 'package:castalk/view/wallet/transaction_details.dart';
import 'package:castalk/view/wallet/transaction_history.dart';
import 'package:castalk/view/wallet/wallet.dart';
import 'package:castalk/view/wallet/wallet_analytics.dart';
import 'package:castalk/view/wallet/withdraw.dart';
import 'package:get/get.dart';

import '../view/nav/profile/MyCasts/my_casts_analytics.dart';
import '../view/nav/profile/MyCasts/my_casts_list.dart';

class Pages{
  static const INITIAL_ROUTE = Routes.Congratulations;

  static final List<GetPage> pages=[

    GetPage(name: Routes.Splash, page: () =>  const Splash()),
    GetPage(name: Routes.Intro, page: () =>  Intro()),
    GetPage(name: Routes.SignIn, page: () =>  SignIn()),
    GetPage(name: Routes.EnterCode, page: () => EnterCode()),
    GetPage(name: Routes.AddAccountInfo, page: () => AddAccountInfo()),
    GetPage(name: Routes.Congratulations, page: () => Congratulations()),
    GetPage(name: Routes.Player, page: () => Player()),
    GetPage(name: Routes.Profile, page: () => Profile()),
    GetPage(name: Routes.DriveMode, page: () => DriveMode()),
    GetPage(name: Routes.SavePlayList, page: () => SavePlayList()),
    GetPage(name: Routes.Playlist, page: () => Playlist()),
    GetPage(name: Routes.Downloads, page: () => Downloads()),
    GetPage(name: Routes.LikedEpisodes, page: () => LikedEpisodes()),
    GetPage(name: Routes.PlayListEpisodes, page: () => PlayListEpisodes()),
    GetPage(name: Routes.Market, page: () => Market()),
    GetPage(name: Routes.Products, page: () => Products()),
    GetPage(name: Routes.Purchases, page: () => Purchases()),
    GetPage(name: Routes.PromotionList, page: () => PromotionList()),
    GetPage(name: Routes.Promotion, page: () =>  Promotion()),
    GetPage(name: Routes.PromotionAnalytics, page: () => PromotionAnalytics()),
    GetPage(name: Routes.Achivments, page: () => Achivments()),
    GetPage(name: Routes.Monetization, page: () => Monetization()),
    GetPage(name: Routes.RequestVerifyBadge, page: () => RequestVerifyBadge()),
    GetPage(name: Routes.ProfileEdit, page: () => ProfileEdit()),
    GetPage(name: Routes.ListeningStatistics, page: () => ListeningStatistics()),
    GetPage(name: Routes.MyCasts, page: () => MyCasts()),
    GetPage(name: Routes.MyCastsList, page: () => MyCastsList()),
    GetPage(name: Routes.MyCastsAnalytics, page: () => MyCastsAnalytics()),
    GetPage(name: Routes.OwnedPodcast, page: () => OwnedPodcast()),
    GetPage(name: Routes.OwnedSeasons, page: () => OwnedSeasons()),
    GetPage(name: Routes.OwnedEpisodes, page: () => OwnedEpisodes()),
    GetPage(name: Routes.HomeFeed, page: () => HomeFeed()),
    GetPage(name: Routes.HomeItemsExpanded, page: () => HomeItemsExpanded()),
    GetPage(name: Routes.Explore, page: () => Explore()),
    GetPage(name: Routes.PodcastView, page: () => PodcastView()),
    GetPage(name: Routes.SeasonView, page: () => SeasonView()),
    GetPage(name: Routes.EpisodeView, page: () => EpisodeView()),
    GetPage(name: Routes.Notifications, page: () => Notifications()),
    GetPage(name: Routes.OtherUserProfile, page: () => OtherUserProfile()),
    GetPage(name: Routes.Comments, page: () => Comments()),
    GetPage(name: Routes.Editor, page: () => Editor()),
    GetPage(name: Routes.Exported, page: () => Exported()),
    GetPage(name: Routes.SavedProjects, page: () => SavedProjects()),
    GetPage(name: Routes.RecordedList, page: () => RecordedList()),
    GetPage(name: Routes.Recorder, page: () => Recorder()),
    GetPage(name: Routes.Wallet, page: () => Wallet()),
    GetPage(name: Routes.NavMother, page: () => NavMother()),
    GetPage(name: Routes.TransactionHistory, page: () => TransactionHistory()),
    GetPage(name: Routes.WalletAnalytics, page: () => WalletAnalytics()),
    GetPage(name: Routes.Deposit, page: () => Deposit()),
    GetPage(name: Routes.Withdraw, page: () => Withdraw()),
    GetPage(name: Routes.TransactionDetails, page: () => TransactionDetails()),
    GetPage(name: Routes.SetPlan, page: () => SetPlan()),
    GetPage(name: Routes.Drafts, page: () => Drafts()),
    GetPage(name: Routes.DraftItem, page: () => DraftItem()),
    GetPage(name: Routes.NewPost, page: () => NewPost()),
    GetPage(name: Routes.NewPodcast, page: () => NewPodcast()),
    GetPage(name: Routes.NewSeason, page: () => NewSeason()),
    GetPage(name: Routes.NewEpisode, page: () => NewEpisode()),
    GetPage(name: Routes.ChooseSubscription, page: () => ChooseSubscription()),
    GetPage(name: Routes.CartProceed, page: () => CartProceed()),
    GetPage(name: Routes.PaymentResponse, page: () => PaymentResponse()),
    GetPage(name: Routes.Presentation, page: () =>  Presentation()),

  ];
}