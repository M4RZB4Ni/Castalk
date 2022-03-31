import 'package:castalk/models/user_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/user.dart';

class UserListController extends GetxController with StateMixin<List<UserListModel>>{

  final User _user = User();
  late List<UserListModel> userList = [];
  //
  @override
  onInit() {
    getUserListData();
    super.onInit();
  }
  //
  getUserListData() async{
    await _user.userList(token: GetStorage().read('token')).then((l) => {
      userList = List<UserListModel>.from(l.map((model) => UserListModel.fromJson(model))),
      debugPrint('userList---> $userList'),
    });
  }

}