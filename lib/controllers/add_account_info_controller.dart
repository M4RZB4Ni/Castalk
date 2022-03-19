import 'package:get/get.dart';
import '../apis/auth.dart';

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
    }
    else{
      Get.snackbar("Error...", "Check User!");
    }
  }

}