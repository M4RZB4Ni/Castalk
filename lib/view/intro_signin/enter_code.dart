import 'dart:async';
import 'package:castalk/controllers/auth_controller.dart';
import 'package:castalk/routes/routes.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class EnterCodeState extends GetView<AuthController>
{
  var phoneNumberValue = Get.arguments[0];

  StreamController<ErrorAnimationType>? errorController;

  TextEditingController textEditingController = TextEditingController();

  String submitted = '';

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Style.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            header(),
            Column(
              children: [
                Text("The code has been sent to",style: Get.textTheme.bodyText1),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 0),
                  child: Text(phoneNumberValue ?? 'None',style: Get.textTheme.subtitle2),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 29,bottom: 9,right: 70,left: 70),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      fieldHeight: 44,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      borderWidth: 1,
                      activeColor: Get.theme.focusColor,
                      inactiveColor: const Color(0xffD2D2D2),
                      selectedColor: Get.theme.focusColor,
                      errorBorderColor:const Color(0xffFF5959),
                    ),
                    textStyle: controller.pincodeStyle,
                    hintStyle: controller.pincodeStyle,
                    cursorColor: Get.theme.focusColor,
                    autoDisposeControllers: true,
                    autoDismissKeyboard: true,
                    keyboardType: TextInputType.number,
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Style.background,
                    enableActiveFill: false,
                    autoFocus: false,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    onCompleted: (v) {
                      debugPrint("Completed");
                      controller.authUpdate(submitted: v);
                      GetBuilder<AuthController>(
                          id: 'checkCodeForStyle',
                          builder: (value){
                            submitted = v;
                            return controller.checkCodeForStyle(v);
                          }
                      );
                    },
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                ),
                // GetBuilder<AuthController>(
                //     id: 'subtitleTextType',
                //     builder: (value){
                //       return controller.subtitleTextType(controller.subtitleTextStyle);
                //     }),
              ]),
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left: 25),
              child: nextButtonHintTextType(controller.nextState)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Padding(
                  padding: const EdgeInsets.only(bottom: 57,left: 27),
                  child: nextButtonType(controller.nextState)
                ),
                controller.nextState == 'ResendOff' ? Padding(
                  padding: const EdgeInsets.only(right: 48,bottom: 57),
                  child: GetBuilder<AuthController>(
                      id: 'startTimer',
                      builder: (value){
                        return Text(controller.startTimer().toString(), style: Get.textTheme.subtitle2);
                      }
                      ),
                ) : const Text('')
              ],
            )
          ],),
          ],
        ),
      ),

    );
  }
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
  }

  void dispose() {
    errorController!.close();
  }

  ElevatedButton nextButtonType(var type)
  {
    switch(type)
    {
      case "ResendOn":
      return  ElevatedButton(onPressed:() => Get.back(), child:const Text("Resend Code",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Color(0xffFFB800))
                )
            ),
            backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),);

      case "ResendOff":
        return ElevatedButton(onPressed:() => print(""), child:const Text("Resend Code",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Color(0xff484848))
                )
            ),
            backgroundColor:MaterialStateProperty.all(const Color(0xff484848)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff5C5C5C),fontSize: 18,fontWeight: FontWeight.w500)) ),);

      case "Next":
        return  ElevatedButton(onPressed:() => Get.toNamed(Routes.AddAccountInfo), child:const Text("Next",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Color(0xffFFB800))
                )
            ),
            backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),);
      default :
        return  ElevatedButton(onPressed:() => print(""), child:const Text("Resend Code",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: const BorderSide(color: Color(0xff484848))
          )
          ),
       backgroundColor:MaterialStateProperty.all(const Color(0xff484848)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff5C5C5C),fontSize: 18,fontWeight: FontWeight.w500)) ),);
    }

  }

  Text nextButtonHintTextType(var type)
  {
    switch(type)
    {
      case "ResendOn":
      return Text("If you have not received code,press resend code or try another number",style: Get.textTheme.subtitle1);


      case "ResendOff":
        return Text("A verification code will send to the number",style: Get.textTheme.subtitle1);

      case "Next":
        return Text("",style: Get.textTheme.subtitle1);
      default :
        return Text("If you have not received code,press resend code or try another number",style: Get.textTheme.subtitle1);
    }

  }

   header()
  {
    return Padding(
      padding: const EdgeInsets.only(top: 36,left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            child: Container(
              width: 44,
              height: 44,
              child: const Icon(Icons.arrow_back_outlined),
              decoration: BoxDecoration(
                color: Colors.grey.shade500,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onTap: (){
              Get.back();
            },
          ),
          Text("Enter Code",style: Get.textTheme.headline1),
           const SizedBox(width: 44,),
        ],
      ),
    );
  }

  @override
  void activate() {
    // TODO: implement activate
  }

  @override
  // TODO: implement context
  BuildContext get context => throw UnimplementedError();

  @override
  Ticker createTicker(TickerCallback onTick) {
    // TODO: implement createTicker
    throw UnimplementedError();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    // TODO: implement didUpdateWidget
  }

  @override
  // TODO: implement mounted
  bool get mounted => throw UnimplementedError();

  @override
  void reassemble() {
    // TODO: implement reassemble
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
  }

  @override
  // TODO: implement widget
  StatefulWidget get widget => throw UnimplementedError();
}