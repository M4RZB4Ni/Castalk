import 'package:castalk/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../apis/other.dart';
import '../models/congratulations_model.dart';

class CongratulationsController extends GetxController with StateMixin<List<CongratulationsModel>>{
  final Other _other = Other();
  late List<CongratulationsModel> categoryList = [];
  //
  categoryIndex() async{
    change(categoryList, status: RxStatus.loading());

    await _other.categoryIndex(token: AuthController().tokenValue()).then((l) => {
      //
      debugPrint('categoryIndexResponseDatemap $l'),
      //
      categoryList = List<CongratulationsModel>.from(l.map((model) => CongratulationsModel.fromJson(model))),
      change(categoryList, status: RxStatus.success()),
      //
      debugPrint('categoryList ${categoryList.first}'),
    });
  }


}