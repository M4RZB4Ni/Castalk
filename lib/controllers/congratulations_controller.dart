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
  late RxList<int> finalSelectedId = RxList();

  @override
  void onInit() {
    super.onInit();

  }


  @override
  void onReady() {
    categoryIndex();

  }

  categoryIndex() async{

    await _other.categoryIndex(token: GetStorage().read('TokenKey')).then((l) => {
      categoryList.value = List<CongratulationsModel>.from(l.map((model) => CongratulationsModel.fromJson(model))),
    debugPrint('categoryList---> ${categoryList}'),
      update()

    });
  }

  selectItems(int index)
  {
    multiSelectController.toggle(index);
    multiSelectController.isSelected(index) ? finalSelectedId.add(categoryList[index].id!) : finalSelectedId.remove(categoryList[index].id!);
    debugPrint('finalSelectedId---> $finalSelectedId');
    update();
  }

  updateCategories({required var token, required List<int> categories}) async {
    if(categories.isNotEmpty) {
      await User().updateFavoriteCategories(token: token, categories: categories);
    }
    else{
      Get.snackbar(
        'Warning',
        'Please select one or more items!',
        duration: 3.seconds,
        snackPosition: SnackPosition.BOTTOM,
        showProgressIndicator: true,
        isDismissible: true,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
    }
  }

}