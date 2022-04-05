import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/monetization_api.dart';

class MonetizationController extends GetxController{

  //
  @override
  void onInit() {
    super.onInit();
  }

  monetizationUpload({required var file, required var castalkMonetizaion}) async
  {
    if(file.isNotEmpty) {
      await Monetization().uploadFile(file: file, castalkMonetizaion: castalkMonetizaion, token: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2F1dGguc2VydmljZXMuY2FzdGFsay5keW5lZW1hZGV2LmNvbS9sb2dpbiIsImlhdCI6MTY0OTE1MTI4NiwiZXhwIjoxNjQ5MTg3Mjg2LCJuYmYiOjE2NDkxNTEyODYsImp0aSI6InRWZmVqdlZ0Z3VCZEpxalMiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.v35PEQ2JHdSe3L0SzZS9mzHd9yLg7afbS4Q5Un-lexY');
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

}