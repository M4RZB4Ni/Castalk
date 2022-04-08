import 'package:castalk/apis/playlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../models/playlist_model.dart';

class PlayListController extends GetxController with StateMixin<List<PlayListModel>>{

  late List<PlayListModel> playList = [];
  final PlaylistApi _playlistApi = PlaylistApi();
  RxBool loadingPlayList = false.obs;
  //
  @override
  void onInit() {
    playListIndex();
    super.onInit();
  }

  playListIndex() async{
    await _playlistApi.playListIndex(token: GetStorage().read('token')).then((l) => {
      playList = List<PlayListModel>.from(l.map((model) => PlayListModel.fromJson(model))),
      debugPrint('playList---> $playList'),
      loadingPlayList.value = true
    });
  }

}