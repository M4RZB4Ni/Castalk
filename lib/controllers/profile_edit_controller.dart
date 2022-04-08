import 'dart:convert';
import 'dart:io';
import 'package:castalk/apis/file_api.dart';
import 'package:castalk/routes/routes.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import '../apis/auth.dart';
import 'package:filesize/filesize.dart';

class ProlfileEditController extends GetxController{

  TextEditingController nameController = TextEditingController();
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
  bool isSelectedFile = false;
  bool isSelectedCover = false;
  bool isSelectedProfile = false;
  late PlatformFile file;
  late String base64File;
  late String pickedFile;
  late RxString pickedFileName = ''.obs;
  late String pickedFileSize;
  late String pickedFileFormat;
  final List pickedFilePack = [];
  late List<Map<String, String>> accountInfo = [
    {"key"   : "cover_file_id", "value" : GetStorage().read('coverFileId')},
    {"key"   : "profile_file_id", "value" : GetStorage().read('profileFileId')},
    {"key"   : "voice_file_id", "value" : GetStorage().read('voiceFileId')},
    {"key"   : "name", "value" : nameController.text},
    {"key"   : "about", "value" : aboutController.text},
    {"key"   : "website", "value" : webSiteController.text},
    {"key"   : "twitter", "value" : twitterController.text},
    {"key"   : "youtube", "value" : youTubeController.text},
    {"key"   : "instagram", "value" : instagramController.text},
    {"key"   : "spotify", "value" : spotifyController.text},
    {"key"   : "soundcloud", "value" : soundCloudController.text},
  ];
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

  void getImage(String type, ImageSource imageSource) async{
    var pickedFile = await ImagePicker().pickImage(source: imageSource);
    //
    if(pickedFile != null && type == 'coverImg'){
      coverPath.value = pickedFile.path;
      coverImgBytes = pickedFile.readAsBytes() as List<int>;
      // base64coverImg = base64Encode(coverImgBytes);
      // debugPrint('base64coverImg---> $base64coverImg');
      isSelectedCover = true;
      coverSize.value = ((File(coverPath.value)).lengthSync() / 364 / 134).toStringAsFixed(2);
    }
    else if(pickedFile != null && type == 'profileImg'){
      profilePath.value = pickedFile.path;
      profileImgBytes = pickedFile.readAsBytes() as List<int>;
      // base64profileImg = base64Encode(profileImgBytes);
      // debugPrint('base64profileImg---> $base64profileImg');
      isSelectedProfile = true;
      profileSize.value = ((File(profilePath.value)).lengthSync() / 113 / 103).toStringAsFixed(2);
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

  coverUpload({required var token, required var path}) async {
    if(isSelectedFile == true) {
      await FileApi().uploadFile(token: token, path: path).then((response) => {
        GetStorage().write('coverFileId', response),
      });
    }
    else{
      Get.snackbar(
        'Warning',
        'Please select your picture!',
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

  profileUpload({required var token, required var path}) async {
    if(isSelectedFile == true) {
      await FileApi().uploadFile(token: token, path: path).then((response) => {
        GetStorage().write('profileFileId', response),
      });
    }
    else{
      Get.snackbar(
        'Warning',
        'Please select your picture!',
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

  fileUpload({required var token, required var path}) async {
    if(isSelectedFile == true) {
      await FileApi().uploadFile(token: token, path: path).then((response) => {
        GetStorage().write('voiceFileId', response),
      });
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

  editProfile({required List<Map<String, String>> data, required var token}) async {
    if(data.isNotEmpty) {
      await AuthApi().updateProfile(data: data, token: token);
      Get.toNamed(Routes.NavMother);
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

  saveInfo({required List<Map<String, String>> data}) async{

    await coverUpload(token: GetStorage().read('TokenKey'), path: coverPath.value);
    await profileUpload(token: GetStorage().read('TokenKey'), path: profilePath.value);
    await fileUpload(token: GetStorage().read('TokenKey'), path: pickedFile);
    debugPrint('coverFileId---> ${GetStorage().read('coverFileId')}');
    debugPrint('profileFileId---> ${GetStorage().read('profileFileId')}');
    debugPrint('voiceFileId---> ${GetStorage().read('voiceFileId')}');
    await editProfile(data: data, token: GetStorage().read('TokenKey'));

  }

}