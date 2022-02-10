import 'package:castalk/apis/auth.dart';
import 'package:castalk/models/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with StateMixin{



  void login({required var mobile,required var password}) async
  {

    AuthModel token= await AuthApi().login(mobile: mobile, password: password);
    debugPrint("token--> ${token.data!.accessToken}");

  }



  void register({required var mobile}) async
  {

    dynamic token= await AuthApi().register(mobile: mobile);
    debugPrint("token--> ${token}");

  }
  @override
  void onInit() {
      debugPrint("SplashController onInit yayaya");
  }


}