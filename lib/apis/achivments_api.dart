import 'dart:convert';

import 'package:castalk/apis/base_api.dart';
import 'package:castalk/models/achivments_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Achivment {
  Future<AchivmentsModel> getAchivment({required var token}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request(
        'GET',
        Uri.parse(
            BaseApi.baseAddressSlash + 'api/rest/Castalk/AchievementIndex'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String, dynamic> resp = await jsonDecode(data);
      return AchivmentsModel.fromJson(resp);
    } else {
      return const AchivmentsModel();

      debugPrint(response.reasonPhrase);
    }
  }
}
