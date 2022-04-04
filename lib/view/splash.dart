import 'package:castalk/cicon.dart';
import 'package:castalk/controllers/auth_controller.dart';
import 'package:castalk/customs/utils.dart';
import 'package:castalk/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Splash extends GetView<AuthController>{
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.background,
      body: Center(child: SvgPicture.asset(Cicon.logo, width: Get.width/3)),
    );
  }

}