import 'package:castalk/apis/playlist.dart';
import 'package:castalk/models/episodes_response/episodes_response.dart';
import 'package:castalk/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/playlist_model.dart';

class PlayListController extends GetxController
    with StateMixin<List<PlayListModel>> {
  late PlayListModel playList;
  late EpisodesModel episodesModel;
  final PlaylistApi _playlistApi = PlaylistApi();
  RxBool loadingPlayList = false.obs;
  RxBool loadingPlayListSingle = false.obs;
  //
  @override
  void onInit() {
    playListIndex();
    super.onInit();
  }

  playListIndex() async {
    playList =
        await _playlistApi.playListIndex(token: GetStorage().read('TokenKey'));
    loadingPlayList.value = true;
    debugPrint('playListplayList $playList');
  }

  Future playListSingle(int playListId) async {
    episodesModel = await _playlistApi.playListSingle(
        token: GetStorage().read('TokenKey'), id: playListId);
    debugPrint('playListplayList $playList');
  }

  goToPlayListSingle(int playListId) async {
    await playListSingle(playListId);
    Get.toNamed(Routes.PlayListEpisodes);
    loadingPlayListSingle.value = true;
  }
}
