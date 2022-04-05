import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class Downloads{

  getDownload({required var episodeId, required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/AddedToDownloads'));
    request.body = jsonEncode({
      "episode_id": episodeId,
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      return [resp];
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  addDownload({required var episodeId, required var token}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/AddToDownloads'));
    request.body = jsonEncode({
      "episode_id": episodeId,
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint('addDownloadDone---> ${await response.stream.bytesToString()}');
      Get.snackbar(
        'Done',
        'Request completed successfully.',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(20),
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
    else{
      debugPrint('updateProfileFailed---> ${response.reasonPhrase}');
      Get.snackbar(
        'Error',
        'Request failed!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

}