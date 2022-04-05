import 'dart:async';
import 'package:castalk/apis/auth.dart';
import 'package:castalk/models/auth_model.dart';
import 'package:castalk/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../models/auth_model.dart';

class AuthController extends GetxController{

  final storage = const FlutterSecureStorage();
  RxString subtitleTextStyle = 'ResendOff'.obs;
  RxString nextState = 'ResendOff'.obs;
  TextStyle pincodeStyle = Get.textTheme.subtitle1!.copyWith(color: Colors.white54);
  RxInt timerCount = (DateTime.now().millisecondsSinceEpoch + const Duration(seconds: 30).inMilliseconds).obs;
  RxBool endTime = false.obs;
  //
  void endTimers() {
    nextState.value = 'ResendOn';
    endTime.value = true;
    update();
  }

  @override
  void onInit() {
    //WidgetsFlutterBinding.ensureInitialized();
    checkToken();
    super.onInit();
  }

  writeTokenValue(String value){
    GetStorage().write('token', value);
  }

  login({required String mobile, required var password}) async
  {
    if(mobile.isNotEmpty) {
      AuthModel token = await AuthApi().login(mobile: mobile, password: password);
      writeTokenValue(token.data.accessToken.toString());
      Get.toNamed(Routes.EnterCode, arguments: [mobile]);
    }
    else{
      Get.snackbar(
        'Warning',
        'Check number!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(20),
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
    }
  }

  void authUpdate({@required var type, @required var submitted}){
    subtitleTextType(type);
    checkCodeForStyle(submitted);
    update(['subtitleTextType', 'checkCodeForStyle']);
  }

  Text subtitleTextType(var type)
  {
    switch(type)
    {
      case "Verified":

        return Text("Your number has been verified successfully", style: Get.textTheme.subtitle1!.copyWith(color: const Color(0xff7CFF4E)));

      case "Wrong":
        return Text("Code is not Correct. recheck your code or get new code",style: Get.textTheme.subtitle1!.copyWith(color: const Color(0xffFF5959)));

      default :
        return const Text('');
    }

  }

  checkCodeForStyle(var submitted)
  {
    if(submitted == '1234'){
      subtitleTextStyle.value = "Verified";
      nextState.value = "Next";
      return pincodeStyle = Get.textTheme.subtitle1!.copyWith(color: const Color(0xff7CFF4E));
    }
    else{
      subtitleTextStyle.value = "Wrong";
      nextState.value = 'ResendOff';
      return pincodeStyle = Get.textTheme.subtitle1!.copyWith(color: const Color(0xffFF5959));
    }
  }

  void checkToken() async
  {
    debugPrint("token--> dadad");

    var token= await storage.read(key: "TokenKey");
    debugPrint("token--> $token");
    if(token!=null){
      Get.toNamed(Routes.Explore);
    }else{
      Get.toNamed(Routes.Intro);
    }
  }

  void register({required var mobile}) async
  {
    dynamic token = await AuthApi().register(mobile: mobile);
  }

  @override
  void onReady() {
    debugPrint('Controller Ready = ${Get.currentRoute}');
  }

}