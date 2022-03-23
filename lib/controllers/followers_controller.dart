import 'package:castalk/models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/following.dart';

class FollowersController extends GetxController with StateMixin<List<FollowersModel>>{

  final Following _following = Following();
  late List<FollowersModel> followersList = [];
  //
  @override
  onInit() async{
    getFollowersData();
    super.onInit();
  }
  //
  getFollowersData() async{
    await _following.getFollowers(token: GetStorage().read('token'), id: GetStorage().read('userId')).then((l) => {
      followersList = List<FollowersModel>.from(l.map((model) => FollowersModel.fromJson(model))),
      debugPrint('followersList---> $followersList'),
    });
  }

}