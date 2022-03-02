import 'dart:async';
import 'package:castalk/apis/auth.dart';
import 'package:castalk/models/auth_model.dart';
import 'package:castalk/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  final storage = const FlutterSecureStorage();
  //
  late Timer _timer;
  RxInt _start = 30.obs;
  static const oneSec = Duration(seconds: 1);
  //
  String subtitleTextStyle = 'ResendOff';
  String nextState = 'ResendOff';
  TextStyle pincodeStyle = Get.textTheme.subtitle1!.copyWith(color: Colors.white54);

  void authUpdate({@required var type, @required var submitted}){
    subtitleTextType(type);
    checkCodeForStyle(submitted);
    update(['subtitleTextType', 'checkCodeForStyle']);
  }

   startTimer(){
    _timer = Timer.periodic(oneSec,
          (Timer timer){_start == 0.obs ? timer.cancel() : _start--;},
    );
    return _start;
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

  void login({required String mobile,required var password}) async
  {
    debugPrint("tokenmobile--> ${mobile}");
    if(mobile.isNotEmpty) {
      AuthModel token = await AuthApi().login(
          mobile: mobile, password: password);
      debugPrint("loginResponse-->>>${token.data.accessToken}");
    }else{
      Get.snackbar("Error...", "Check Number!");
    }
   // debugPrint("token--> ${token.data!.accessToken}");
  }

  void register({required var mobile}) async
  {
    dynamic token = await AuthApi().register(mobile: mobile);
  }

  @override
  void onInit() {
    WidgetsFlutterBinding.ensureInitialized();
    checkToken();
  }

  @override
  void onReady() {
    debugPrint('Controller Ready = ${Get.currentRoute}');
  }

}