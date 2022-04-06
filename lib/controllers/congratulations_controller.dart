import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_select_item/multi_select_item.dart';
import '../apis/other.dart';
import '../apis/user.dart';
import '../models/congratulations_model.dart';
import '../routes/routes.dart';

class CongratulationsController extends GetxController with StateMixin<List<CongratulationsModel>>{

  final MultiSelectController multiSelectController = MultiSelectController();
  final Other _other = Other();
  late RxList<CongratulationsModel> categoryList = RxList();
  late RxList<int> selectedItems = RxList();
  var finalSelectedIndex = 0.obs;
  //
  @override
  void onInit() {
    categoryIndex();
    super.onInit();
  }
  //
  categoryIndex() async{

    await _other.categoryIndex(token: GetStorage().read('token')).then((l) => {
      categoryList.value = List<CongratulationsModel>.from(l.map((model) => CongratulationsModel.fromJson(model))),
    debugPrint('categoryList---> ${categoryList}'),
    });
  }
  selectItems(int index)
  {
    selectedItems.add(index);
    multiSelectController.toggle(index);
    update();
  }

  updateCategories({required var categories, required var token}) async {
    if(categories.isNotEmpty) {
      await User().updateFavoriteCategories(categories: categories, token: token);
    }
    else{
      Get.snackbar(
        'Error',
        'Check user!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

}