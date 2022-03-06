import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class MediaCreation{

  createPodcast({required var token,required var title,required var description,required var category,required var imageID}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CreatePodcast'));
    request.fields.addAll({
      'title': title,
      'description': description,
      'category': category,
      'image': imageID
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

  createSeason({required var token,required var title,required var description,required var podcastId,required var imageID}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CreateSeason'));
    request.fields.addAll({
      'title': title,
      'description': description,
      'podcast_id': podcastId,
      'image': imageID
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

  createEpisode({required var token,required var title,required var description,required var podcastId,required var seasonId,required var imageID,required var allowShare,required var allowComments,required var fileID}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };


    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CreateEpisode'));
    request.fields.addAll({
      'title': title,
      'description': description,
      'podcast': podcastId,
      'season': seasonId,
      'image': imageID,
      'allow_share': allowShare,
      'allow_comments': allowComments,
      'file': fileID
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