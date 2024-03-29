import 'package:castalk/apis/base_api.dart';
import 'package:http/http.dart' as http;


class Singles{


  viewSeason({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/ViewSeason/$id'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }

  viewEpisode({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/ViewEpisode/$id'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }
  viewPodcast({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/ViewPodcast/$id'));


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