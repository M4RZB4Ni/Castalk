import 'package:castalk/apis/into_api_client.dart';
import 'package:castalk/models/intro_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController with StateMixin<List<IntroModel>>{
  final IntroApiClient _introApiClient = IntroApiClient();
  late List<IntroModel> introList = [];
  //
  introGetAll() async{
    change(introList, status: RxStatus.loading());

    await _introApiClient.introGetAll().then((l) => {

          introList = List<IntroModel>.from(l.map((model) => IntroModel.fromJson(model))),
          change(introList, status: RxStatus.success()),
      });
}

}