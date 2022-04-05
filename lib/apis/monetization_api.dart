import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../controllers/monetization_controller.dart';
import 'base_api.dart';

class Monetization{

  uploadFile({required var fileMonetizaion}) async {

    var request = http.MultipartRequest('POST', Uri.parse('https://file.services.castalk.dyneemadev.com/upload'));
    request.fields.addAll({
      "file": fileMonetizaion,
      "project": 'castalk_monetizaion',
    });
    // request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    debugPrint('rrrrrrrrrrrrrrrrrr---> $response');

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      debugPrint('fileUploaddddddddddddddddddddd---> $resp');
      //monetizationUploadFile(fileId: fileId, token: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2F1dGguc2VydmljZXMuY2FzdGFsay5keW5lZW1hZGV2LmNvbS9sb2dpbiIsImlhdCI6MTY0OTE3MTYzOCwiZXhwIjoxNjQ5MjA3NjM4LCJuYmYiOjE2NDkxNzE2MzgsImp0aSI6IjRMUVRkeHpvdVpzNTFIYTgiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.ZLIDmtMx26nfqbAolUBaKXu2kDpigGZEXcnTIEhpGSk');
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  monetizationUploadFile({required var fileId, required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/MonetizationUploadFile'));
    request.body = jsonEncode({
      "file_id": fileId,
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      debugPrint('fileUpload---> $resp');
      return resp;
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

}