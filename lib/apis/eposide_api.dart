import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class EpisodeApi{

  likeEpisode({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/LikeEpisode'));
    request.fields.addAll({
      'episode_id': id
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

  likeEpisode({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
    };
    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/EpisodeComments/1'));

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