import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/downloads_api.dart';
import '../models/downloads_model.dart';

class DownloadsController extends GetxController with StateMixin<List<DownloadsModel>>{

  final Downloads _downloads = Downloads();
  late List<DownloadsModel> downloadsList = [];
  //
  @override
  onInit() {
    super.onInit();
  }
  //
  getDownloadData({required var episodeId}) async{
    await _downloads.getDownload(episodeId: episodeId, token: GetStorage().read('token')).then((l) => {
      downloadsList = List<DownloadsModel>.from(l.map((model) => DownloadsModel.fromJson(model))),
      debugPrint('downloadsList---> $downloadsList'),
    });
  }

}