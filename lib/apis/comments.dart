import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Comments{

  createComment({required var token,required var toSeasonID,required var message,required var ownerId,required var onTime}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CreateComment'));
    request.fields.addAll({
      'to': toSeasonID,
      'message': message,
      'owner': ownerId,
      'time': onTime
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

  seasonComment({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SeasonComments/$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  podcastComment({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/PodcastComments/$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  episodeComment({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/EpisodeComments/$id'));

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