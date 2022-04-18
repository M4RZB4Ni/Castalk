import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:castalk/models/listening_statistics_model.dart';
import 'package:castalk/models/market/products/product_response.dart';
import 'package:castalk/models/market/purchases/purchases_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class MarketApi{


  Future<PurchasesModel> marketPurchases({required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/MarketPurchases'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      return PurchasesModel.fromJson(resp);
    }
    else {
      return const PurchasesModel();
    }
  }


  Future<ProductModel> marketProducts({required var token}) async {

    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/MarketProducts'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      return ProductModel.fromJson(resp);
    }
    else {
      return const ProductModel();
    }
  }

}