import 'package:castalk/controllers/congratulations_controller.dart';
import 'package:castalk/controllers/followers_controller.dart';
import 'package:castalk/controllers/motion_controller.dart';
import 'package:castalk/controllers/play_list_controller.dart';
import 'package:castalk/controllers/profile_single_controller.dart';
import 'package:get/get.dart';
import '../controllers/add_account_info_controller.dart';
import '../controllers/auth_controller.dart';
import '../controllers/intro_controller.dart';

class CastalkBindings implements Bindings{
  @override
  void dependencies(){
    Get.put(AuthController());
    Get.put(IntroController());
    Get.put(CongratulationsController());
    //Get.lazyPut(() => CongratulationsController());
    Get.put(AddAcountInfoController());
    Get.put(ProfileController());
    Get.put(MotionController());
    Get.put(PlayListController());
    Get.put(FollowersController());
  }
}