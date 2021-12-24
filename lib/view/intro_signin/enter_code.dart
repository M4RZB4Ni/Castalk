

import 'dart:async';

import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterCode extends StatefulWidget{

  String? phoneNumber;
  String? code="111111";


  EnterCode({Key? key,required this.phoneNumber}) : super(key: key);


  EnterCode.empty({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EnterCodeState();
  }

}

class EnterCodeState extends State<EnterCode>
{

  StreamController<ErrorAnimationType>? errorController;
  TextEditingController textEditingController = TextEditingController();
  var nextState="ResendOff";
  var subtitleTextStyle="ResendOff";

  final interval = const Duration(seconds: 30);
  final int timerMaxSeconds = 3;
  int currentSeconds = 0;
  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')} : ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';


  @override
  Widget build(BuildContext context) {

    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    pincodeStyle=Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white54);


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
                Text("The code has been sent to",style: Theme.of(context).textTheme.bodyText1),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 0),
                  child: Text(widget.phoneNumber ?? "None",style: Theme.of(context).textTheme.subtitle2),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 29,bottom: 9,right: 70,left: 70),
                  child: PinCodeTextField(

                    appContext: context,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      fieldHeight: 44,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      borderWidth: 1,
                      activeColor: Theme.of(context).focusColor,
                      inactiveColor: const Color(0xffD2D2D2),
                      selectedColor: Theme.of(context).focusColor,
                      errorBorderColor:const Color(0xffFF5959),

                    ),
                    textStyle: pincodeStyle,
                    hintStyle: pincodeStyle,
                    cursorColor: Theme.of(context).focusColor,
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
                      checkCodeForStyle(v);

                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                       // currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                ),
                subtitleTextType(subtitleTextStyle)

              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 25),
                  child:nextButtonHintTextType(nextState),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 57,left: 27),
                      child: nextButtonType(nextState),
                    ),
                    nextState=="ResendOff" ? Padding(
                      padding: const EdgeInsets.only(right: 48,bottom: 57),
                      child:  Text(timerText,style: Theme.of(context).textTheme.subtitle2,),
                    ) : const Text(" ")
                  ],
                )
              ],)
          ],
        ),
      ),

    );
  }

  @override
  void initState() {
    startTimeout();
    errorController = StreamController<ErrorAnimationType>();

  }

  @override
  void dispose() {
    errorController!.close();
  }

  ElevatedButton nextButtonType(var type)
  {
    switch(type)
    {
      case "ResendOn":
      return  ElevatedButton(onPressed:() => print(""), child:const Text("Resend Code",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
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
        return  ElevatedButton(onPressed:() => print(""), child:const Text("Next",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
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
      return Text("If you have not received code,press resend code or try another number",style: Theme.of(context).textTheme.subtitle1);


      case "ResendOff":
        return Text("A verification code will send to the number",style: Theme.of(context).textTheme.subtitle1);

      case "Next":
        return Text("",style: Theme.of(context).textTheme.subtitle1);
      default :
        return Text("If you have not received code,press resend code or try another number",style: Theme.of(context).textTheme.subtitle1);
    }

  }

  Text subtitleTextType(var type)
  {
    switch(type)
    {
      case "Verified":

        return Text("Your number has been verified successfully",style:Theme.of(context).textTheme.subtitle1!.copyWith(color: const Color(0xff7CFF4E)));


      case "Wrong":
        return Text("Code is not Correct. recheck your code or get new code",style: Theme.of(context).textTheme.subtitle1!.copyWith(color: const Color(0xffFF5959)));

      default :
        return Text("");
    }

  }
  late TextStyle pincodeStyle;
  void checkCodeForStyle(var submitted)
  {


    if(submitted!=widget.code)
      {
        debugPrint("submitted!=widget.code");

        setState(() {
          subtitleTextStyle="Wrong";
          pincodeStyle= Theme.of(context).textTheme.subtitle1!.copyWith(color: const Color(0xffFF5959));
        });
      }else if(submitted==widget.code){
      debugPrint("submitted==widget.code");

      setState(() {
        subtitleTextStyle="Verified";
        nextState="Next";

        pincodeStyle= Theme.of(context).textTheme.subtitle1!.copyWith(color: const Color(0xff7CFF4E));
      });
     }
  }

   header()
  {
    return   Padding(
      padding: const EdgeInsets.only(top: 36,left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined) ,decoration: BoxDecoration(color: Colors.grey.shade500,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),),
          Text("Enter Code",style: Theme.of(context).textTheme.headline1),
           const SizedBox(width: 44,),

        ],
      ),
    );
  }

  startTimeout() {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds){
          nextState="ResendOn";
          timer.cancel();
        }
      });
    });
  }
}