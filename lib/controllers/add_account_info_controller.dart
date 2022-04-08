import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../apis/auth.dart';
import '../routes/routes.dart';

class AddAcountInfoController extends GetxController{

  final cCodes = ['Not rather to say', 'Male','Female'];
   late String genderValue;
  //
 @override
 void onInit() {
   genderValue = cCodes.first;

   super.onInit();
 }
 //
  void setSelected(String value){
   genderValue = value;
   update();
 }

  updateProfile({required List<Map<String, String>> data, required var token}) async
  {
    if(data.isNotEmpty) {
      await AuthApi().updateProfile(data: data, token: token);
      Get.toNamed(Routes.Congratulations);
    }
    else{
      Get.snackbar(
        'Error',
        'Check user!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

}