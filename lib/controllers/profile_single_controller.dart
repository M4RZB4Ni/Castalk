import 'package:castalk/apis/analytics_api.dart';
import 'package:castalk/models/analytics_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/auth.dart';
import '../models/profile_single_model.dart';

class ProfileController extends GetxController with StateMixin<List<ProfileSingleModel>>{
  final Analytics _analytics = Analytics();

  late List<ProfileSingleModel> profileSingleList = [];
  late List<AnalyticsModel> analyticsList = [];

  final AuthApi _authApi = AuthApi();
  late RxString listensK='0'.obs;
  late RxString followersK='0'.obs;
  late RxString postsK='0'.obs;
  RxBool loadingProfile=false.obs;
  //
  @override
  void onInit() {

    getProfileData();
    getAnalyticsData();

    super.onInit();
  }
  getAnalyticsData() async{
    await _analytics.analytics(token: GetStorage().read('token')).then((l) => {
      analyticsList =  List<AnalyticsModel>.from(l.map((model) => AnalyticsModel.fromJson(model))),
    listensK.value = '${(analyticsList[0].data!.listens! / 1000).toStringAsFixed(0)}K',
        followersK.value = '${(analyticsList[0].data!.followers! / 1000).toStringAsFixed(0)}K',
    postsK.value = '${(analyticsList[0].data!.posts! / 1000).toStringAsFixed(0)}K',
      debugPrint('analyticsList---> $analyticsList'),
      loadingProfile.value=true

    });
  }

  //
  getProfileData() async{
    await _authApi.profileSingle(token: GetStorage().read('token')).then((l) => {
      profileSingleList = List<ProfileSingleModel>.from(l.map((model) => ProfileSingleModel.fromJson(model))),
      GetStorage().write('userId', profileSingleList[0].id.toString()),
      debugPrint('profileSingleList---> $profileSingleList'),
    });
  }

}