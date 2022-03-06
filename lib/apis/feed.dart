
import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Feed {

  viewPodcast(
      {required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET',
        Uri.parse(BaseApi.baseAddressSlash + 'api/rest/Castalk/ViewFeed'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  searchFeed(
      {required var token,required var searchKeyword}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SearchFeed?q=$searchKeyword'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

}