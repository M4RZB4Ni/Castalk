import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/achivments_api.dart';
import '../models/achivments_model.dart';

class AchivmentsController extends GetxController with StateMixin<List<AchivmentsModel>>{

  final Achivment _achivment = Achivment();
  late List<AchivmentsModel> achivmentList = [];
  RxBool loadingAchivments = false.obs;
  //
  @override
  onInit() {
    getAchivmentData();
    super.onInit();
  }
  //
  getAchivmentData() async{
    await _achivment.getAchivment(token: GetStorage().read('token')).then((l) => {
      achivmentList = List<AchivmentsModel>.from(l.map((model) => AchivmentsModel.fromJson(model))),
      debugPrint('achivmentList---> $achivmentList'),
      loadingAchivments.value = true,
    });
  }

}