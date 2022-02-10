import 'package:castalk/apis/base_api.dart';
import 'package:castalk/cicon.dart';
import 'package:castalk/controllers/splash_controller.dart';
import 'package:castalk/customs/utils.dart';
import 'package:castalk/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Splash extends GetView<SplashController>{
    Splash({Key? key}) : super(key: key);

   @override
  final controller=Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    controller.register(mobile: "09185584088");
    return Scaffold(
      backgroundColor: Style.background,
      body: Center(child: SvgPicture.asset(Cicon.logo,width:  Utils(context).getWidth()/3)),
    );

  }

}