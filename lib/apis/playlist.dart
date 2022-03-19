import 'dart:convert';

import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;



class PlaylistApi {

  playListCreate(
      {required var token, required var title, required var description, required List tags}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash +
        'api/rest/Castalk/PlayListCreate?title=$title&description=$description&tags=$tags'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  playListSingle({required var token, required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(
        'https://api.services.castalk.dyneemadev.com/api/rest/Castalk/PlayListSingle?id=$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  playListAddItem(
      {required var token, required var id, required List items}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash +
        'api/rest/Castalk/PlayListAddItem?playlist_id=$id&items=$items'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  playListRemoveItem(
      {required var token, required var id, required List items}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash +
        'api/rest/Castalk/PlayListRemoveItem?playlist_id=$id&items=$items'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  playListUpdate(
      {required var token, required var id, required var title, required var description, required List tags}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(
        BaseApi.baseAddressSlash +
            'api/rest/Castalk/PlayListUpdate?id=$id&title=$title&description=$description&tags=$tags'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  playListIndex(
      {required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/PlayListIndex'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {

      var data = await response.stream.bytesToString();

      Map<String, dynamic> resp = await jsonDecode(data);

      return [resp];
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  playListDelete(
      {required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/PlayListDelete'));
    request.fields.addAll({
      'id': id
    });

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
