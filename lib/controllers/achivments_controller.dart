import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../apis/achivments_api.dart';
import '../models/achivments_model.dart';

class AchivmentsController extends GetxController
    with StateMixin<AchivmentsModel> {
  final Achivment _achivment = Achivment();
  late AchivmentsModel achivmentsModel;
  //
  @override
  onInit() {
    getAchivmentData();
    super.onInit();
  }

  //
  getAchivmentData() async {
    RxStatus.loading();
    achivmentsModel =
        await _achivment.getAchivment(token: GetStorage().read('TokenKey'));
    RxStatus.success();
  }
}
