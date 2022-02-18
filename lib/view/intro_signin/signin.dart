import 'package:castalk/controllers/auth_controller.dart';
import 'package:castalk/customs/utils.dart';
import 'package:castalk/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SignIn extends StatelessWidget {
  //List<String> cCodes=["Male","Female"];
  static const TextStyle dropStyle =
      TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400);
  TextEditingController numberController = TextEditingController();
  BoxDecoration boxDecorations = BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      border: Border.all(width: 1, color: const Color(0xff484848)));
  late String _genderValue;

  final authService = Get.find<AuthController>();

  @override
  void initState() {
    //_genderValue="Male";
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Style.background,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("Log in", style: Theme.of(context).textTheme.headline1)),
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
                      style: Theme.of(context).textTheme.bodyText1),
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
                            child: Theme(data: Theme.of(context).copyWith(
                                canvasColor: Style.background),
                                child: DropdownButton<String>(
                                    icon: const Padding(
                                      padding: EdgeInsets.only(right: 25),
                                      child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 32,),
                                    ),
                                    isDense: false,
                                    value: _genderValue,
                                    style: Theme.of(context).textTheme.bodyText2,
                                    items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Theme.of(context).textTheme.bodyText2),value: e,)).toList(),
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
                                TextStyle(color: Theme.of(context).hintColor),
                            fillColor: Colors.white))),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text("A verification code will send to the number",
                      style: Theme.of(context).textTheme.subtitle1),
                ),
                ElevatedButton(
                  onPressed: () {
                    debugPrint("sentOTP");
                    authService.register(mobile: numberController.text);
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
