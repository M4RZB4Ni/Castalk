import 'package:castalk/apis/into_api_client.dart';
import 'package:castalk/models/intro_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController{

late List<IntroModel> introList;

final IntroApiClient _introApiClient=IntroApiClient();

introGetAll() async{
    _introApiClient.introGetAll().then((l) => {
      debugPrint('introGetAllResponseDate $l'),
        introList=List<IntroModel>.from(l.map((model) => IntroModel.fromJson(model)))
    });
}



}