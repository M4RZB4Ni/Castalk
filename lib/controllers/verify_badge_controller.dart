import 'package:castalk/apis/verify_badge_api.dart';
import 'package:file_picker/file_picker.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyBadgeController extends GetxController{

  late PlatformFile file;
  late String base64File;
  late String pickedFile;
  late RxString pickedFileName = ''.obs;
  late String pickedFileSize;
  late String pickedFileFormat;
  final List pickedFilePack = [];
  bool isSelectedFile = false;
  //
  pickFile() async {

    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if(result != null && result.files.single.size <= 1000000){
      pickedFile = result.files.single.path!;
      debugPrint('pickedFile---> $pickedFile');
      //use this line for convert to base64
      // final bytes = await File(result.files.first.path!).readAsBytes();
      // base64File = base64Encode(bytes);
      // debugPrint('base64File---> $base64');

      pickedFileName.value = result.files.single.name;
      pickedFileSize = filesize(result.files.single.size);
      pickedFileFormat = result.files.single.extension!;
      pickedFilePack.add(pickedFile);
      pickedFilePack.add(pickedFileFormat);
      isSelectedFile = true;
    }
    else if(result == null){
      isSelectedFile = false;
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

  verifyBadgeUpload({required var token}) async {
    if(isSelectedFile == true) {
      await VerifyBadge().uploadFile(fileVerifyBadge: pickedFile, token: token);
    }
    else{
      Get.snackbar(
        'Warning',
        'Please select your file!',
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