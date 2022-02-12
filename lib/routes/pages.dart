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

class Pages{
  static const INITIAL_ROUTE = Routes.Splash;

  static final List<GetPage> pages=[

    GetPage(name: Routes.Splash, page: () =>  const Splash()),
    GetPage(name: Routes.Intro, page: () =>  Intro()),
    GetPage(name: Routes.SignIn, page: () =>  SignIn()),
    GetPage(name: Routes.EnterCode, page: () =>  EnterCode(phoneNumber: '+989185584088')),
    GetPage(name: Routes.AddAccountInfo, page: () =>  const AddAccountInfo()),
    GetPage(name: Routes.Congratulations, page: () =>  const Congratulations()),
    GetPage(name: Routes.Player, page: () =>  const Player()),
    GetPage(name: Routes.Profile, page: () =>  const Profile()),
    GetPage(name: Routes.DriveMode, page: () =>  const DriveMode()),
    GetPage(name: Routes.SavePlayList, page: () =>  const SavePlayList()),
    GetPage(name: Routes.Playlist, page: () =>  const Playlist()),
    GetPage(name: Routes.Downloads, page: () =>  const Downloads()),
    GetPage(name: Routes.LikedEpisodes, page: () =>  const LikedEpisodes()),
    GetPage(name: Routes.PlayListEpisodes, page: () =>  const PlayListEpisodes()),
    GetPage(name: Routes.Market, page: () =>  const Market()),
    GetPage(name: Routes.Products, page: () =>  const Products()),
    GetPage(name: Routes.Purchases, page: () =>  const Purchases()),
    GetPage(name: Routes.PromotionList, page: () =>  const PromotionList()),
    GetPage(name: Routes.Promotion, page: () =>  const Promotion()),
    GetPage(name: Routes.PromotionAnalytics, page: () =>  const PromotionAnalytics()),
    GetPage(name: Routes.Achivments, page: () =>  const Achivments()),
    GetPage(name: Routes.Monetization, page: () =>  const Monetization()),
    GetPage(name: Routes.RequestVerifyBadge, page: () =>  const RequestVerifyBadge()),
    GetPage(name: Routes.ProfileEdit, page: () =>  const ProfileEdit()),
    GetPage(name: Routes.ListeningStatistics, page: () =>  const ListeningStatistics()),
    GetPage(name: Routes.MyCasts, page: () =>  const MyCasts()),
    GetPage(name: Routes.OwnedPodcast, page: () =>  const OwnedPodcast()),
    GetPage(name: Routes.OwnedSeasons, page: () =>  const OwnedSeasons()),
    GetPage(name: Routes.OwnedEpisodes, page: () =>  const OwnedEpisodes()),
    GetPage(name: Routes.HomeFeed, page: () =>  const HomeFeed()),
    GetPage(name: Routes.HomeItemsExpanded, page: () =>  const HomeItemsExpanded()),
    GetPage(name: Routes.Explore, page: () =>  const Explore()),
    GetPage(name: Routes.PodcastView, page: () =>  const PodcastView()),
    GetPage(name: Routes.SeasonView, page: () =>  const SeasonView()),
    GetPage(name: Routes.EpisodeView, page: () =>  const EpisodeView()),
    GetPage(name: Routes.Notifications, page: () =>  const Notifications()),
    GetPage(name: Routes.OtherUserProfile, page: () =>  const OtherUserProfile()),
    GetPage(name: Routes.Comments, page: () =>  const Comments()),
    GetPage(name: Routes.Editor, page: () =>  const Editor()),
    GetPage(name: Routes.Exported, page: () =>  const Exported()),
    GetPage(name: Routes.SavedProjects, page: () =>  const SavedProjects()),
    GetPage(name: Routes.RecordedList, page: () =>  const RecordedList()),
    GetPage(name: Routes.Recorder, page: () =>  const Recorder()),
    GetPage(name: Routes.Wallet, page: () =>  const Wallet()),
    GetPage(name: Routes.NavMother, page: () =>  const NavMother()),
    GetPage(name: Routes.TransactionHistory, page: () =>  const TransactionHistory()),
    GetPage(name: Routes.WalletAnalytics, page: () =>  const WalletAnalytics()),
    GetPage(name: Routes.Deposit, page: () =>  const Deposit()),
    GetPage(name: Routes.Withdraw, page: () =>  const Withdraw()),
    GetPage(name: Routes.TransactionDetails, page: () =>  const TransactionDetails()),
    GetPage(name: Routes.SetPlan, page: () =>  const SetPlan()),
    GetPage(name: Routes.Drafts, page: () =>  const Drafts()),
    GetPage(name: Routes.DraftItem, page: () =>  const DraftItem()),
    GetPage(name: Routes.NewPost, page: () =>  const NewPost()),
    GetPage(name: Routes.NewPodcast, page: () =>  const NewPodcast()),
    GetPage(name: Routes.NewSeason, page: () =>  const NewSeason()),
    GetPage(name: Routes.NewEpisode, page: () =>  const NewEpisode()),
    GetPage(name: Routes.ChooseSubscription, page: () =>  const ChooseSubscription()),
    GetPage(name: Routes.CartProceed, page: () =>  const CartProceed()),
    GetPage(name: Routes.PaymentResponse, page: () =>  const PaymentResponse()),
    GetPage(name: Routes.Presentation, page: () =>  const Presentation()),

  ];
}