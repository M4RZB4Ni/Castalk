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
  String subtitleTextStyle = 'ResendOff';
  String nextState = 'ResendOff';
  TextStyle pincodeStyle = Get.textTheme.subtitle1!.copyWith(color: Colors.white54);
  late Timer _timer;
  var start = 30.obs;
  //
  @override
  void onInit() {
    WidgetsFlutterBinding.ensureInitialized();
    checkToken();
    super.onInit();
  }

  startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start == 0) {
          nextState = 'ResendOn';
          timer.cancel();
        } else {
          start--;
        }
      },
    );
    return start.toString();
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
        backgroundColor: Colors.amber,
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
      subtitleTextStyle = "Verified";
      nextState = "Next";
      return pincodeStyle = Get.textTheme.subtitle1!.copyWith(color: const Color(0xff7CFF4E));
    }
    else{
      subtitleTextStyle = "Wrong";
      nextState = 'ResendOff';
      return pincodeStyle = Get.textTheme.subtitle1!.copyWith(color: const Color(0xffFF5959));
    }
  }

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

  void register({required var mobile}) async
  {
    dynamic token = await AuthApi().register(mobile: mobile);
  }

  @override
  void onReady() {
    debugPrint('Controller Ready = ${Get.currentRoute}');
  }

}