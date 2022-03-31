import 'package:castalk/apis/singles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../models/view_episode_model.dart';

class EpisodeController extends GetxController with StateMixin<List<ViewEpisodeModel>>{

  final Singles _singles = Singles();
  late List<ViewEpisodeModel> viewEpisodeList = [];
  @override
  void onInit() {
    getViewEpisodeData();
    super.onInit();
  }
  //
  getViewEpisodeData() async{
    await _singles.viewEpisode(
      token: GetStorage().read('token'),
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

}