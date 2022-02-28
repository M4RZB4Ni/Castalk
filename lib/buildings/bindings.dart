import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../controllers/intro_controller.dart';

class CastalkBindings implements Bindings{

  @override
  void dependencies(){
    Get.put(AuthController());
    Get.put(IntroController());
  }
}