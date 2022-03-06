import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class IntroApiClient{


  introGetSingle(
      {required var token,required var id}) async
  {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/IntroGetSingle?id=$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

 Future introGetAll() async
  {

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/IntroGetAll'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {

    var data=await response.stream.bytesToString();
    //debugPrint('introGetAllResponseDate $data');

    Map<String,dynamic>  resp =await jsonDecode(data);

      return resp['data']['data'];
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }
  
}