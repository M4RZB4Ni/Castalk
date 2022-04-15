import 'dart:convert';

import 'package:castalk/apis/base_api.dart';
import 'package:castalk/constraints/enums.dart';
import 'package:castalk/models/liked_entity_response/liked_entity_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class LikesApi {
  String? _token;
  var headers;
  LikesApi() {
    _token = GetStorage().read('TokenKey');
    headers = {
      'Authorization': 'Bearer $_token',
    };
  }

  likeSeason({required var id}) async {
    var request = http.MultipartRequest('POST',
        Uri.parse(BaseApi.baseAddressSlash + 'api/rest/Castalk/LikeSeason'));
    request.fields.addAll({'season_id': id});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    } else {
      debugPrint(response.reasonPhrase);
    }
  }

  likeEpisode({required var id}) async {
    var request = http.MultipartRequest('POST',
        Uri.parse(BaseApi.baseAddressSlash + 'api/rest/Castalk/LikeEpisode'));
    request.fields.addAll({'season_id': id});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    } else {
      debugPrint(response.reasonPhrase);
    }
  }

  likeComment({required var id}) async {
    var request = http.MultipartRequest('POST',
        Uri.parse(BaseApi.baseAddressSlash + 'api/rest/Castalk/LikeComment'));
    request.fields.addAll({'season_id': id});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    } else {
      debugPrint(response.reasonPhrase);
    }
  }

  likePodcast({required var id}) async {
    var request = http.MultipartRequest('POST',
        Uri.parse(BaseApi.baseAddressSlash + 'api/rest/Castalk/LikePodcast'));
    request.fields.addAll({'podcast_id': id});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    } else {
      debugPrint(response.reasonPhrase);
    }
  }

  Future<LikedEntityModel> likedEntities(
      {required EntityType entityType}) async {
    var request = http.MultipartRequest(
        'GET',
        Uri.parse(
            'https://api.services.castalk.dyneemadev.com/api/rest/Castalk/LikedEntities?type=episode'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      debugPrint('likedEntities $data');

      Map<String, dynamic> resp = await jsonDecode(data);

      return LikedEntityModel.fromJson(resp);
    } else {
      debugPrint('likedEntities zzzzzzzzzz');

      print(response.reasonPhrase);
      return LikedEntityModel();
    }
    return const LikedEntityModel();
  }
}
