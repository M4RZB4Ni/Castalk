import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_select_item/multi_select_item.dart';
import '../apis/other.dart';
import '../models/congratulations_model.dart';

class CongratulationsController extends GetxController with StateMixin<List<CongratulationsModel>>{

  final MultiSelectController Controller = MultiSelectController();
  final Other _other = Other();
  late List<CongratulationsModel> categoryList = [];
  var finalSelectedIndex = 0.obs;
  //
  @override
  void onInit() {
    categoryIndex();
    super.onInit();
  }
  //
  congratulationsUpdate({@required var index}){
    Controller.toggle(index);
    finalSelectedIndex = Controller.selectedIndexes.length.obs;
    debugPrint('finalSelectedIndex---> $finalSelectedIndex');
    update();
  }

  categoryIndex() async{

    await _other.categoryIndex(token: GetStorage().read('token')).then((l) => {
      categoryList = List<CongratulationsModel>.from(l.map((model) => CongratulationsModel.fromJson(model))),
    debugPrint('categoryList---> $categoryList'),
    });
  }

}