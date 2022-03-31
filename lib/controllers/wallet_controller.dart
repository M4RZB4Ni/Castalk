import 'package:castalk/models/wallet_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../apis/carts.dart';

class WalletController extends GetxController with StateMixin<List<WalletModel>>{

  final Carts _carts = Carts();
  late List<WalletModel> walletList = [];
  //
  @override
  onInit() {
    getWalletData();
    super.onInit();
  }
  //
  getWalletData() async{
    await _carts.getWallet(token: GetStorage().read('token')).then((l) => {
      walletList = List<WalletModel>.from(l.map((model) => WalletModel.fromJson(model))),
      debugPrint('walletList---> $walletList'),
    });
  }

}