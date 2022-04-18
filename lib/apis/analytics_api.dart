import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:castalk/models/listening_statistics_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class Analytics{

  analytics({required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/Analytics'));
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

  Future<ListeningAnalyticsModel> listeningAnalytics({required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/ListeningAnalytics'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      return ListeningAnalyticsModel.fromJson(resp);
    }
    else {
      return const ListeningAnalyticsModel();
    }
  }

}