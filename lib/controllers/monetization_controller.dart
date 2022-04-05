import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../apis/monetization_api.dart';

class MonetizationController extends GetxController{


  late PlatformFile file;
  late String base64;
  late String pickedFile;
  late RxString pickedFileName=''.obs;
  late String pickedFileSize;
  late String pickedFileFormat;
  final List pickedFilePack = [];

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

  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if(result != null && result.files.length <= 1000000){
      pickedFile = result.files.first.path!;
      //use this line for convert to base64
      final bytes = await File(result.files.first.path!).readAsBytes();
      base64=base64Encode(bytes);
      debugPrint('_pickedFilebase64---> $base64');
      pickedFileName.value = result.files.first.name;
      pickedFileSize = filesize(result.files.first.size);
      pickedFileFormat = result.files.first.extension!;

      pickedFilePack.add(pickedFile);
      pickedFilePack.add(pickedFileFormat);
    }
    else{
      Get.snackbar(
        'Warning',
        'The file size is more than 1MB!',
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