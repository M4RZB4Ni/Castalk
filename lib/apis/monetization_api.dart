import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'base_api.dart';

class Monetization{

  uploadFile({required String file, required var castalkMonetizaion, required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'/upload'));
    request.files.add(await http.MultipartFile.fromPath('pdf', file));

    request.fields.addAll({
      "file": file,
      "castalk_monetizaion": castalkMonetizaion,
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

  monetizationUploadFile({required var fileId, required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/MonetizationUploadFile'));
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