import 'package:castalk/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../routes/routes.dart';

class AddAccountInfo extends StatefulWidget{
  const AddAccountInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddAccountInfoState();
  }

}

class AddAccountInfoState extends State<AddAccountInfo>{

  List<String> cCodes=["Not rather to say","Male","Female"];
  static const TextStyle dropStyle=TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400);
  TextEditingController fullNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  BoxDecoration boxDecorations=BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(12)),border: Border.all(width: 1,color: const Color(0xff484848)));
  late String _genderValue;


  @override
  void initState() {
    _genderValue=cCodes.first;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                    Text("Enter your Full name*",style: Theme.of(context).textTheme.bodyText1),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 9),
                      child:Container(height: 55,decoration:  boxDecorations,width: Get.width,
                        child: TextField(
                            controller: fullNameController,
                            textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                            hintText: "eg: nahil natan",hintStyle: TextStyle(color: Theme.of(context).hintColor),fillColor: Colors.white))

                    )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Enter your Account name*",style: Theme.of(context).textTheme.bodyText1),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 9),
                        child:Container(height: 55,decoration:  boxDecorations,width: Get.width,
                          child: TextField(
                              controller: nameController,
                              textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                              hintText: "eg: Best_podcast_ever",hintStyle: TextStyle(color: Theme.of(context).hintColor),fillColor: Colors.white))

                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Add your Birthday",style: Theme.of(context).textTheme.bodyText1),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 9),
                        child:Container(height: 55,decoration:  boxDecorations,width: Get.width,
                          child: TextField(
                              controller: birthdayController,
                              textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                              hintText: "eg: 1991-02-15",hintStyle: TextStyle(color: Theme.of(context).hintColor),fillColor: Colors.white))

                      )),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gender",style: Theme.of(context).textTheme.bodyText1),// Padding(
                      Padding(padding: const EdgeInsets.only(top: 15,bottom: 9),
                      child: Container(height: 55,decoration:  boxDecorations,width: Get.width,child: DropdownButtonHideUnderline(
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 12,left: 19),
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
                    ),
                  ],
                ),



              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: RichText(text: TextSpan(

                      children: [
                    TextSpan(text:"By saveing these infos you will admit to accept the",style: Theme.of(context).textTheme.subtitle1),
                        TextSpan(recognizer: TapGestureRecognizer()..onTap=(){launch('');},text:" Castalk Agreement and Policy",style: Theme.of(context).textTheme.headline2)
                      ]))
                ),

                ElevatedButton(
                  onPressed:(){
                    if(fullNameController.text.isEmpty || nameController.text.isEmpty){
                      Get.snackbar(
                          'Warning',
                          'Please enter your Fields',
                          duration: 3.seconds,
                          snackPosition: SnackPosition.BOTTOM,
                          showProgressIndicator: true,
                          isDismissible: true,
                          backgroundColor: Colors.lightGreen,
                          colorText: Colors.white,
                      );
                    }
                    else{
                      Get.toNamed(Routes.Congratulations);
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



    );
  }
  header({required bool onlyTitle})
  {
    return   Padding(
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
          Text("Add account info",style: Theme.of(context).textTheme.headline1),
          const SizedBox(width: 44),
        ],
      ),
    );
  }

}