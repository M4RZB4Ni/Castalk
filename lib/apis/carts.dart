import 'dart:convert';
import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Carts {

  getWallet({required var token}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/WalletIndex'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Map<String,dynamic> resp = await jsonDecode(data);
      return [resp];
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  removeFromCart({required var token, required var id,required var podcast}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CartRemoveFromCart'));
    request.fields.addAll({
      'type': podcast,
      'id': id
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  addToCart({required var token, required var id,required var podcast}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CartAddToCart'));
    request.fields.addAll({
      'type': podcast,
      'id': id
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  getUserCartHistory({required var token, required var id}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CartGetUserCartHistory?id=$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  getUserCart({required var token, required var id}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/CartGetUserCart?id=$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  withdrawRequest({required var token, required var price}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/WithdrawRequest'));
    request.fields.addAll({
      'price': price
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

  withdrawHistoryRequest({required var token}) async {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/WithdrawHistoryRequest'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }
  }

}