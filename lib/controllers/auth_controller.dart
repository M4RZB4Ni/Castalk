import 'package:castalk/apis/auth.dart';
import 'package:castalk/customs/utils.dart';
import 'package:castalk/models/auth_model.dart';
import 'package:castalk/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{


  final storage = const FlutterSecureStorage();




  void checkToken() async
  {
    var token= await storage.read(key: "TokenKey");
    debugPrint("token--> $token");
    if(token!=null){
      Get.toNamed(Routes.Explore);
    }else{
      Get.toNamed(Routes.Intro);
    }

  }


  void login({required var mobile,required var password}) async
  {
    debugPrint("tokenmobile--> ${mobile}");

    AuthModel token= await AuthApi().login(mobile: mobile, password: password);
   // debugPrint("token--> ${token.data!.accessToken}");
  }



  void register({required var mobile}) async
  {
    dynamic token = await AuthApi().register(mobile: mobile);
    // debugPrint("token--> ${token}");


  }





}