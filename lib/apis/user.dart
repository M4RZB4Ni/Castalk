import 'dart:convert';

import 'package:castalk/apis/base_api.dart';
import 'package:http/http.dart' as http;


class User{



  updateFavoriteCategories(
      {required var token,required List categories}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/UpdateFavoriteCategories'));
    request.body = jsonEncode({
      "categories": categories
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }



}