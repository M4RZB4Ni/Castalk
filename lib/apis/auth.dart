import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:castalk/models/auth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthApi{

  login({required var mobile,required var password}) async
  {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+"login"));
    request.body = jsonEncode({
      "mobile": mobile,
      "password": password
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      var respo=await response.stream.bytesToString();
      var decoded= await jsonDecode(respo);
      return AuthModel.fromJson(decoded);
  }
  else {
  debugPrint(response.reasonPhrase);
  }

  }

   register({required var mobile}) async
  {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+"register"));
    request.body = jsonEncode({
      "mobile": mobile
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    var respo=await response.stream.bytesToString();
    debugPrint("registerResponse-->"+respo);

    if (response.statusCode == 201) {
      var respo=await response.stream.bytesToString();
      var decoded= await jsonDecode(respo);
      return AuthModel.fromJson(decoded);
    }
    else {
      debugPrint(respo);
    }

  }

  updateUsername({required var username,required var mobile,required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+'update-username'));
    request.body = jsonEncode({
      "username": username
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

  checkUsername({required var username,required var mobile,required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+'check/username'));
    request.body = jsonEncode({
      "username_to_check": username
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

  tokenCheck({required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.authBaseAddressSlash+'check'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }



  }

  updateProfile({required Map<String,dynamic> data,required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+'profile'));
    request.body = jsonEncode({
      "keys": [
        data
      ]
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

  refreshToeken({required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
    };
    var request = http.Request('GET', Uri.parse(BaseApi.authBaseAddressSlash+'refresh'));

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