import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class Publishing{

  publishEpisode(
      {required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/PublishEpisode'));
    request.fields.addAll({
      'episode_id': id
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

  episodePublishBySchedule(
      {required var token,required var id,required var date}) async
  {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/EpisodePublishBySchedule'));
    request.fields.addAll({
      'id': id,
      'publish_at': date
      //'2022-01-03 16:39:26'
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

  episodeUnpublish(
      {required var token,required var id}) async
  {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/EpisodeUnpublish'));
    request.fields.addAll({
      'episode_id': id
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

