import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class Like{


  likeSeason({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/LikeSeason'));
    request.fields.addAll({
      'season_id': id
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

  likeEpisode({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/LikeEpisode'));
    request.fields.addAll({
      'season_id': id
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

  likeComment({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/LikeComment'));
    request.fields.addAll({
      'season_id': id
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

  likePodcast({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/LikePodcast'));
    request.fields.addAll({
      'podcast_id': id
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