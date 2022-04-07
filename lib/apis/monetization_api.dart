import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:http/http.dart' as http;
import '../controllers/monetization_controller.dart';

class Monetization{

  uploadFile({required var fileMonetizaion, required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://file.services.castalk.dyneemadev.com/upload'));
    request.fields.addAll({
      'project': 'castalk'
    });
    request.files.add(await http.MultipartFile.fromPath('file', fileMonetizaion));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      String fileId = resp['data']['file_id'];
      debugPrint('fileId---> $fileId');
      monetizationUploadFile(fileId: fileId, token: token);
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  monetizationUploadFile({required var fileId, required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://api.services.castalk.dyneemadev.com/api/rest/Castalk/MonetizationUploadFile'));
    request.fields.addAll({
      'file_id': fileId,
      'description': 'description about file'
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      debugPrint('monetizationUploadFile---> $resp');
      Get.find<MonetizationController>().pickedFile = '';
      Get.find<MonetizationController>().pickedFileName.value = '';
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