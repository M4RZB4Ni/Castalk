import 'package:castalk/controllers/auth_controller.dart';
import 'package:castalk/customs/utils.dart';
import 'package:castalk/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {

  static const TextStyle dropStyle = TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400);
  final numberController = TextEditingController();
  BoxDecoration boxDecorations = BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      border: Border.all(width: 1, color: const Color(0xff484848)));
  final authService = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Style.background,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("Log in", style: Get.textTheme.headline1)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
              width: Utils(context).getWidth(),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 9),
                  child: Text("Use your mobile number to signin",
                      style: Get.textTheme.bodyText1),
                ),
               /* Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 9),
                  child: Container(
                      height: 55,
                      decoration: boxDecorations,
                      width: w,
                      child: DropdownButtonHideUnderline(
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                            child: Theme(data: Get.copyWith(
                                canvasColor: Style.background),
                                child: DropdownButton<String>(
                                    icon: const Padding(
                                      padding: EdgeInsets.only(right: 25),
                                      child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 32,),
                                    ),
                                    isDense: false,
                                    value: _genderValue,
                                    style: Get.textTheme.bodyText2,
                                    items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Get.textTheme.bodyText2),value: e,)).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        // selectedActivity = value;
                                        _genderValue=value!;
                                        debugPrint('album choose-> $value');


                                      });
                                    })),
                          )
                      )),
                ),*/
                Container(
                    height: 55,
                    decoration: boxDecorations,
                    width: Utils(context).getWidth(),
                    child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: numberController,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: false,
                            contentPadding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 19),
                            hintText: "Add your Number eg: 123 - 4567 - 890",
                            hintStyle:
                                TextStyle(color: Get.theme.hintColor),
                            fillColor: Colors.white))),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text("A verification code will send to the number",
                      style: Get.textTheme.subtitle1),
                ),
                ElevatedButton(
                  onPressed: () {
                    debugPrint("sentOTP");
                    numberController.text.length == 11 ? authService.login(mobile: numberController.text, password: '1234')
                        : numberController.text == '' ? Get.defaultDialog(title: 'Warning', middleTextStyle: Get.textTheme.displayMedium, middleText: 'Please enter your mobile number', titleStyle: Get.textTheme.bodyMedium)
                        : numberController.text.length >= 11 || numberController.text.length <= 11 ?
                    Get.snackbar(
                      'Warning',
                      'Mobile number is incorrect!',
                      duration: 3.seconds,
                      snackPosition: SnackPosition.BOTTOM,
                      margin: const EdgeInsets.all(20),
                      showProgressIndicator: true,
                      isDismissible: true,
                      backgroundColor: Colors.amber,
                      colorText: Colors.white,
                    ) : const Text('');
                    //authService.register(mobile: numberController.text);
                  },
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(color: Color(0xff283034)),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 17, horizontal: 58)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side:
                                  const BorderSide(color: Color(0xffFFB800)))),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffFFB800)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          color: Color(0xff283034),
                          fontSize: 18,
                          fontWeight: FontWeight.w500))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
