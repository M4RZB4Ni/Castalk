import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../apis/auth.dart';

class ProlfileEditController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController episodeNameController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController webSiteController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController youTubeController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController spotifyController = TextEditingController();
  TextEditingController soundCloudController = TextEditingController();
  var coverPath = ''.obs;
  var coverSize = ''.obs;
  var profilePath = ''.obs;
  var profileSize = ''.obs;
  var editAbout = false.obs;
  List<int> coverImgBytes = [];
  List<int> profileImgBytes = [];
  late String base64coverImg, base64profileImg;
  //
  @override
  void onInit() {
    super.onInit();
  }

  editField(String type){
    switch(type){
      case 'about':
        editAbout.value = true;
        break;
    }
  }

  void getImage(String type, ImageSource imageSource) async{
    var pickedFile = await ImagePicker().pickImage(source: imageSource);
    //
    if(pickedFile != null && type == 'coverImg'){
      coverPath.value = pickedFile.path;
      coverImgBytes = pickedFile.readAsBytes() as List<int>;
      // base64coverImg = base64Encode(coverImgBytes);
      // debugPrint('base64coverImg---> $base64coverImg');
      coverSize.value = ((File(coverPath.value)).lengthSync() / 364 / 134).toStringAsFixed(2) + 'Mb';
    }
    else if(pickedFile != null && type == 'profileImg'){
      profilePath.value = pickedFile.path;
      profileImgBytes = pickedFile.readAsBytes() as List<int>;
      // base64profileImg = base64Encode(profileImgBytes);
      // debugPrint('base64profileImg---> $base64profileImg');
      profileSize.value = ((File(profilePath.value)).lengthSync() / 113 / 103).toStringAsFixed(2) + 'Mb';
    }
    else{
      Get.snackbar(
        'Error',
        'No photo selected!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(20),
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }

  }



  editProfile({required List<Map<String, String>> data, required var token}) async
  {
    if(data.isNotEmpty) {
      await AuthApi().updateProfile(data: data, token: token);
    }
    else{
      Get.snackbar(
        'Error',
        'Check inputs!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(20),
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

}