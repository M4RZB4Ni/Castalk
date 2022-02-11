import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:castalk/models/auth_model.dart';
import 'package:castalk/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthApi{

  final storage = const FlutterSecureStorage();


  void checkToken() async
  {
    var token= await storage.read(key: "TokenKey");
    if(token!=null){
      Get.toNamed(Routes.Explore);
    }else{
      Get.toNamed(Routes.Intro);
    }

  }

  login({required var mobile,required var password}) async
  {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+"login"));
    request.body = jsonEncode({
      "mobile": mobile,
      "password": password
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      var respo=await response.stream.bytesToString();
      return AuthModel.fromJson(jsonDecode(respo.toString()));
      // debugPrint("expire-->"+data.data!.accessToken.toString());

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
    request.body = jsonEncode({
      "mobile": mobile
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      var respo=await response.stream.bytesToString();

      debugPrint("registerResponse-->"+respo);

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
    request.body = jsonEncode({
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
    request.body = jsonEncode({
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

  tokenCheck({required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'check'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }



  }



  updateProfile({required Map<String,dynamic> data,required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'profile'));
    request.body = jsonEncode({
      "keys": [
        data
      ]
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

  refreshToeken({required var token}) async
  {
    var headers = {
      'Authorization': 'bearer $token',
    };
    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'refresh'));

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