import 'package:castalk/controllers/add_account_info_controller.dart';
import 'package:castalk/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class AddAccountInfo extends GetView<AddAcountInfoController>{

  static const TextStyle dropStyle=TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400);
  TextEditingController fullNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  late List<Map<String, String>> accountInfo = [
    {"key"   : "full_name", "value" : fullNameController.text},
    {"key"   : "name", "value" : nameController.text},
    {"key"   : "birthday", "value" : birthdayController.text.isEmpty ? '' : birthdayController.text},
    {"key"   : "gender", "value" : controller.genderValue.toString() == 'Not rather to say' ? '' : controller.genderValue.toString()},
  ];
  BoxDecoration boxDecorations = BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(12)),border: Border.all(width: 1,color: const Color(0xff484848)));

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
        onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Style.background,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              header(onlyTitle: true),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter your Full name*",style: Get.textTheme.bodyText1),
                        Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 9),
                            child:Container(height: 55,decoration:  boxDecorations,width: Get.width,
                                child: TextField(
                                    controller: fullNameController,
                                    textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                                    hintText: "eg: nahil natan",hintStyle: TextStyle(color: Get.theme.hintColor),fillColor: Colors.white))

                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter your Account name*",style: Get.textTheme.bodyText1),
                          Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 9),
                              child:Container(height: 55,decoration:  boxDecorations,width: Get.width,
                                  child: TextField(
                                      controller: nameController,
                                      textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                                      hintText: "eg: Best_podcast_ever",hintStyle: TextStyle(color: Get.theme.hintColor),fillColor: Colors.white))

                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Add your Birthday",style: Get.textTheme.bodyText1),
                          Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 9),
                              child:Container(height: 55,decoration:  boxDecorations,width: Get.width,
                                  child: TextField(
                                      controller: birthdayController,
                                      textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                                      hintText: "eg: 1991-02-15",hintStyle: TextStyle(color: Get.theme.hintColor),fillColor: Colors.white))

                              )),
                        ],
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gender", style: Get.textTheme.bodyText1),// Padding(
                          Padding(padding: const EdgeInsets.only(top: 15,bottom: 9),
                            child: Container(height: 55,decoration:  boxDecorations,width: Get.width,child: DropdownButtonHideUnderline(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 12,left: 19),
                                child: Theme(data: Get.theme.copyWith(
                                    canvasColor: Style.background),
                                  child: GetBuilder<AddAcountInfoController>(builder: (controller){
                                    return DropdownButton(
                                      icon: const Padding(padding: EdgeInsets.only(right: 25),
                                        child: Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xffD1D1D1), size: 32),
                                      ),
                                      isDense: false,
                                      value: controller.genderValue.toString(),
                                      style: Get.textTheme.bodyText2,
                                      items: controller.cCodes.map((selectedValue) => DropdownMenuItem(child: Text(selectedValue.toString(),style: Get.textTheme.bodyText2),value: selectedValue)).toList(),
                                      onChanged: (newValue){
                                        controller.setSelected(newValue.toString());
                                      },
                                    );
                                  },),
                                ),
                              ),
                            )),
                          ),
                        ]),
                  ]),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: RichText(text: TextSpan(
                          children: [
                            TextSpan(text:"By saveing these infos you will admit to accept the",style: Get.textTheme.subtitle1),
                            TextSpan(recognizer: TapGestureRecognizer()..onTap=(){launch('');},text:" Castalk Agreement and Policy",style: Get.textTheme.headline2)
                          ]))
                  ),

                  ElevatedButton(
                    onPressed:(){
                      if(fullNameController.text.isEmpty || nameController.text.isEmpty){
                        Get.snackbar(
                          'Warning',
                          'Please enter your Fields!',
                          duration: 3.seconds,
                          snackPosition: SnackPosition.BOTTOM,
                          margin: const EdgeInsets.all(20),
                          showProgressIndicator: true,
                          isDismissible: true,
                          backgroundColor: Colors.orange,
                          colorText: Colors.white,
                        );
                      }
                      else{
                        controller.updateProfile(data: accountInfo, token: GetStorage().read('TokenKey'));
                      }
                    },
                    child:const Text("Accept and Save",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 14,horizontal: 58)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Color(0xffFFB800))
                          )
                      ),
                      backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),)
                ],)
            ],
          ),
        ),



      ),
    );
  }
  header({required bool onlyTitle})
  {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Visibility(visible: !onlyTitle,
          //     child:
          // ),
          // InkWell(
          //   child: Container(
          //     width: 44,
          //     height: 44,
          //     child: const Icon(Icons.arrow_back_outlined),
          //     decoration: BoxDecoration(
          //       color: Colors.grey.shade500,
          //       shape: BoxShape.rectangle,
          //       borderRadius: BorderRadius.circular(12),
          //     ),
          //   ),
          //   onTap: (){
          //     Get.back();
          //   },
          // ),
          Text("Add account info",style: Get.textTheme.headline1),
          const SizedBox(width: 44),
        ],
      ),
    );
  }

}