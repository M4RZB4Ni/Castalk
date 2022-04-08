import 'package:castalk/models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/following.dart';

class MyCastsController extends GetxController with GetSingleTickerProviderStateMixin{

  final Following _following = Following();
  late List<FollowersModel> followersList = [];
  late final TabController tabController = TabController(length: 2, vsync: this);
  final cCodes = ["This Week", "Last Week", "Next Week"];
  late String charDropValue;
  late String reachesDropValue;
  late String earningsDropValue;
  //
  @override
  onInit() {
    //getFollowersData();
    charDropValue = cCodes.first;
    reachesDropValue = cCodes.first;
    earningsDropValue = cCodes.first;
    super.onInit();
  }
  //
  void charDropSetSelected(String value){
    charDropValue = value;
    update();
  }

  void reachesDropSetSelected(String value){
    reachesDropValue = value;
    update();
  }

  void earningsDropSetSelected(String value){
    earningsDropValue = value;
    update();
  }

  getFollowersData() async{
    await _following.getFollowers(token: GetStorage().read('TokenKey'), id: GetStorage().read('userId')).then((l) => {
      followersList = List<FollowersModel>.from(l.map((model) => FollowersModel.fromJson(model))),
      debugPrint('followersList---> $followersList'),
    });
  }

}