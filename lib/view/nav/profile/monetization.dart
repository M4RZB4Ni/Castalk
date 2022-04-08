import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../controllers/monetization_controller.dart';

class Monetization extends  GetView<MonetizationController>{

  Monetization({Key? key}) : super(key: key);
  String svgPath = "assets/icons/";
  TextEditingController fileNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(Get.width, 100), child: header(Get.width)),
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 120, right: 14, left: 14),
                child: RichText(
                    text: TextSpan(
                    children: [
                      TextSpan(text:"To make a creator account you have to add a working credit id/number to let us transfer money to you as uttered in \n",style: Style.t_400_14w.copyWith(height: 1.8)),
                      TextSpan(text:"creator users agreement.\n",style: Style.t_400_14g.copyWith(height: 1.8)),
                      TextSpan(text:"By doing this you will be considerd a creator member and will have access to pro tools and options to analys and promot\n your contents.\nthis procedure may take 1 or 2 days. ",style: Style.t_400_14w.copyWith(height: 1.8)),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14, left: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text("Please select withdraw method of payment :",style: Style.t_400_16w,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(Cicon.webmoney),
                        SvgPicture.asset(Cicon.visa),
                        SvgPicture.asset(Cicon.paypal),
                        SvgPicture.asset(Cicon.discover),
                        SvgPicture.asset(Cicon.mastercard),
                      ],),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 51,right: 24,left:24),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                          child: Text("File:",style: Style.t_400_16w,),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => controller.pickFile(),
                              child: Container(
                                width: 44,
                                height: 44,
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(svgPath+"upload.svg"),
                                decoration: BoxDecoration(
                                    color: Style.accentGold,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                            Expanded(
                                flex:12,
                                child: Padding(padding: const EdgeInsets.all(15),
                                child: Container(
                                  width: Get.width,
                                  height: 44,
                                  decoration: Style.inputBoxDecoration,
                                  child: Obx(() => Center(
                                    child: Text(controller.pickedFileName.value, textAlign: TextAlign.left,maxLines: 1),
                                  )),
                                ))),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45,left: 28,bottom: 28),
                child: ElevatedButton(onPressed:() => controller.monetizationUpload(token: GetStorage().read('token')), child:const Text("Send Request",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Color(0xffFFB800))
                        )
                    ),
                    backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),),
              )
            ],
          ),
        )
      ),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Container(
              width: 44,
              height: 44,
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Style.headerBackBtn,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Text("Monetization", style: Get.textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }

}