import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/auth.dart';
import '../models/profile_single_model.dart';

class ProfileController extends GetxController with StateMixin<List<ProfileSingleModel>>{

  late List<ProfileSingleModel> profileSingleList = [];
  final AuthApi _authApi = AuthApi();
  //
  @override
  void onInit() {
    //getProfileData();
    super.onInit();
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