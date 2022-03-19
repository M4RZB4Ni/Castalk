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
  onInit(){
    //getFollowersData();
    super.onInit();
  }
  //
  getFollowersData() async{
    debugPrint('userId = ${GetStorage().read('userId')}');
    await _following.getFollowers(token: GetStorage().read('token'), id: GetStorage().read('userId').then((l) => {
      debugPrint('getFollowersData---> $l'),
      //
      followersList = List<FollowersModel>.from(l.map((model) => FollowersModel.fromJson(model))),
      GetStorage().write('followersCount', followersList.length.toString()),
      //
      debugPrint('followersCount---> ${GetStorage().read('followersCount')}'),
      debugPrint('followingList---> $followersList'),
    }));
  }

}