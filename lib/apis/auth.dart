import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthApi{

   login({required var mobile,required var password}) async
  {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+"login"));
    request.body = json.encode({
      "mobile": mobile,
      "password": password
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      debugPrint(await response.stream.bytesToString());
      return response.statusCode;
  }
  else {
  print(response.reasonPhrase);
  }

  }

   register({required var mobile}) async
  {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+"register"));
    request.body = json.encode({
      "mobile": mobile
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      return response.statusCode;
    }
    else {
      print(response.reasonPhrase);
    }

  }

  updateUsername({required var username,required var mobile,required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'update-username'));
    request.body = json.encode({
      "username": username
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

  checkUsername({required var username,required var mobile,required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'check/username'));
    request.body = json.encode({
      "username_to_check": username
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