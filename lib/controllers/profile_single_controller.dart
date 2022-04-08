import 'package:castalk/apis/analytics_api.dart';
import 'package:castalk/models/analytics_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/auth.dart';
import '../apis/playlist.dart';
import '../apis/singles.dart';
import '../models/playlist_model.dart';
import '../models/profile_single_model.dart';
import '../models/view_episode_model.dart';

class ProfileController extends GetxController with StateMixin<List<ProfileSingleModel>>{
  final Analytics _analytics = Analytics();
  final AuthApi _authApi = AuthApi();
  late List<PlayListModel> playList = [];
  final PlaylistApi _playlistApi = PlaylistApi();
  final Singles _singles = Singles();
  late List<ViewEpisodeModel> viewEpisodeList = [];
  late List<ProfileSingleModel> profileSingleList = [];
  late List<AnalyticsModel> analyticsList = [];

  late RxString listensK = '0'.obs;
  late RxString followersK = '0'.obs;
  late RxString postsK = '0'.obs;
  RxBool loadingProfile = false.obs;
  //
  @override
  void onInit() {
    getProfileData();
    playListIndex();
    getViewEpisodeData();
    getAnalyticsData();
    super.onInit();
  }

  getProfileData() async{
    await _authApi.profileSingle(token: GetStorage().read('TokenKey')).then((l) => {
      profileSingleList = List<ProfileSingleModel>.from(l.map((model) => ProfileSingleModel.fromJson(model))),
      GetStorage().write('userId', profileSingleList[0].id.toString()),
      debugPrint('profileSingleList---> $profileSingleList'),
    });
  }

  playListIndex() async{
    await _playlistApi.playListIndex(token: GetStorage().read('TokenKey')).then((l) => {
      playList = List<PlayListModel>.from(l.map((model) => PlayListModel.fromJson(model))),
      debugPrint('playList---> $playList'),
    });
  }

  getViewEpisodeData() async{
    await _singles.viewEpisode(
      token: GetStorage().read('TokenKey'),
      id: GetStorage().read('userId'),
      title: 'Khodemoon Podcast',
      description: 'dore hami',
      category: '1',
      image: '1234',
    ).then((l) => {
      viewEpisodeList = List<ViewEpisodeModel>.from(l.map((model) => ViewEpisodeModel.fromJson(model))),
      debugPrint('viewEpisodeList---> $viewEpisodeList'),
    });
  }

  getAnalyticsData() async{
    await _analytics.analytics(token: GetStorage().read('TokenKey')).then((l) => {
      analyticsList =  List<AnalyticsModel>.from(l.map((model) => AnalyticsModel.fromJson(model))),
    listensK.value = '${(analyticsList[0].data!.listens! / 1000).toStringAsFixed(0)}K',
    followersK.value = '${(analyticsList[0].data!.followers! / 1000).toStringAsFixed(0)}K',
    postsK.value = '${(analyticsList[0].data!.posts! / 1000).toStringAsFixed(0)}K',
      debugPrint('analyticsList---> $analyticsList'),
      loadingProfile.value = true
    });
  }

}