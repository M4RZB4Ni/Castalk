import 'dart:convert';
import 'package:castalk/controllers/verify_badge_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

class VerifyBadge{

  uploadFile({required var fileVerifyBadge, required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://file.services.castalk.dyneemadev.com/upload'));
    request.fields.addAll({
      'project': 'castalk'
    });
    request.files.add(await http.MultipartFile.fromPath('file', fileVerifyBadge));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      String fileId = resp['data']['file_id'];
      debugPrint('fileId---> $fileId');
      verifyBadgeUploadFile(fileId: fileId, token: token);
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  verifyBadgeUploadFile({required var fileId, required var token}) async {

    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://api.services.castalk.dyneemadev.com/api/rest/Castalk/UserVerifyBadge'));
    request.fields.addAll({
      'file_id': fileId,
      'description': 'description about file'
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      debugPrint('verifyBadgeUploadFile---> $resp');
      Get.find<VerifyBadgeController>().pickedFile = '';
      Get.find<VerifyBadgeController>().pickedFileName.value = '';
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
    else {
      debugPrint(response.reasonPhrase);
    }

  }

}