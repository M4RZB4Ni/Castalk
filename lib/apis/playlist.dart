import 'package:castalk/apis/base_api.dart';
import 'package:http/http.dart' as http;



class Playlist {

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
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
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
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
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
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
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
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
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
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
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
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
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
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }

}
