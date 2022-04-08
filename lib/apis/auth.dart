import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:castalk/models/auth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import '../models/profile_single_model.dart';
import '../routes/routes.dart';

class AuthApi{

  login({required var mobile,required var password}) async
  {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+"login"));
    request.body = jsonEncode({
      "mobile": mobile,
      "password": password,
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      var respo = await response.stream.bytesToString();
      var decoded = await jsonDecode(respo);
      debugPrint('AuthModel.fromJson(decoded) = ${AuthModel.fromJson(decoded)}');
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

  updateUsername({required var username,required var mobile,required var token}) async {
    var headers = {
      'Authorization': 'Bearer $token',
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

  updateProfile({required List<Map<String, String>> data,required var token}) async {
    var headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+'profile'));

    request.body = jsonEncode({
      "keys" : data
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint('updateProfileDone---> ${await response.stream.bytesToString()}');
      Get.snackbar(
        'Done',
        'Request completed successfully.',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(20),
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
    else{
      debugPrint('updateProfileFailed---> ${response.reasonPhrase}');
      Get.snackbar(
        'Error',
        'Request failed!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  profileSingle({required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.authBaseAddressSlash+'single/1'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {

      var data = await response.stream.bytesToString();

      Map<String, dynamic> resp = await jsonDecode(data);

      return [resp];
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  profileSearch({required var token, required var searchValue}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.Request('POST', Uri.parse(BaseApi.authBaseAddressSlash+"search"));
    request.body = jsonEncode({
      "query": searchValue,
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      var respo = await response.stream.bytesToString();
      var decoded = await jsonDecode(respo);
      return ProfileSingleModel.fromJson(decoded);
    }
    else{
      debugPrint(response.reasonPhrase);
      Get.snackbar(
        'Warning',
        'User does not exist!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.lightGreen,
        colorText: Colors.white,
      );
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