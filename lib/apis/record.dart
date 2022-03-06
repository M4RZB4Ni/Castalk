import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;



class Record {


  recordCreate(
      {required var token, required var id}) async
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

  recordDelete(
      {required var token, required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',

    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/RecordDelete?id=$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }


  recordUpdate(
      {required var token, required var id,required var title}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/RecordUpdate?title=$title&id=$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  recordIndex(
      {required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/RecordIndex'));

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