import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../apis/monetization_api.dart';

class MonetizationController extends GetxController{

  late PlatformFile file;
  late String base64File;
  late String pickedFile;
  late RxString pickedFileName = ''.obs;
  late String pickedFileSize;
  late String pickedFileFormat;
  final List pickedFilePack = [];

  monetizationUpload({required var file}) async {
    if(file.isNotEmpty) {
      await Monetization().uploadFile(fileMonetizaion: file);
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
        debugPrint('pickedFile---> $pickedFile');
        //use this line for convert to base64
        final bytes = await File(result.files.first.path!).readAsBytes();
        base64File = base64Encode(bytes);
        debugPrint('base64File---> $base64');

        pickedFileName.value = result.files.first.name;
        pickedFileSize = filesize(result.files.first.size);
        pickedFileFormat = result.files.first.extension!;
        pickedFilePack.add(pickedFile);
        pickedFilePack.add(pickedFileFormat);
    }
    else if(result == null){
      Get.snackbar(
        'Error',
        'No file selected!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(20),
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
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