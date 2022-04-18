import 'package:castalk/apis/market.dart';
import 'package:castalk/models/market/products/product_response.dart';
import 'package:castalk/models/market/purchases/purchases_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MarketController extends GetxController with GetSingleTickerProviderStateMixin{

  final MarketApi _marketApi = MarketApi();
  late final ProductModel productModel;
  late final PurchasesModel purchasesModel;
  late final TabController tabController = TabController(length: 2, vsync: this);
  RxBool loading = false.obs;

  @override
  onInit() {
    getPurchases();
    getPurchases();
    super.onInit();
  }



  getProducts() async{
    productModel= await _marketApi.marketProducts(token: GetStorage().read('TokenKey'));
  }

  getPurchases() async{
    purchasesModel= await _marketApi.marketPurchases(token: GetStorage().read('TokenKey'));
    loading.value=true;
  }

}