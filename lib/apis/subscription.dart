import 'package:castalk/apis/base_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Subscription{

  itemAddItemsToSubscribe({required var token,required var dedicatedSubscriptionPlanId,required var itemType,required var itemId}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SubscriptionDedicatedPlanItemAddItemsToSubscribe?dedicated_subscription_plan_id=$dedicatedSubscriptionPlanId&item_type=$itemType&item_id=$itemId'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  create({required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SubscriptionDedicatedPlanCreate'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  single({required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SubscriptionDedicatedPlanSingle'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  subscriptionDedicatedPlanIndex({required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SubscriptionDedicatedPlanIndex'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  subscriptionPlanIndex({required var token}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var request = http.Request('GET', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SubscriptionPlanIndex'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      debugPrint(await response.stream.bytesToString());
    }
    else {
      debugPrint(response.reasonPhrase);
    }

  }

  subscriptionDedicatedPlanUpdate({required var token,required var subscriptionPlanId,required var title,required var price,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SubscriptionDedicatedPlanUpdate'));
    request.fields.addAll({
      'subscription_plan_id': subscriptionPlanId,
      'title': title,
      'price': price,
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

  subscriptionDedicatedPlanDelete({required var token,required var id}) async
  {
    var headers = {
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse(BaseApi.baseAddressSlash+'api/rest/Castalk/SubscriptionDedicatedPlanDelete'));
    request.fields.addAll({
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

}