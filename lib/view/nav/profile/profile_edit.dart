import 'dart:io';
import 'package:castalk/style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../controllers/profile_edit_controller.dart';

class ProfileEdit extends GetView<ProlfileEditController> {

  String svgPath = "assets/icons/";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(Get.width, 100), child: header(Get.width)),
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 26,left: 26,top: 31),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  controller.getImage('coverImg', ImageSource.gallery);
                },
                child: DottedBorder(
                    color: Style.gray5C,
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(16),
                    child: Center(
                      child: Obx( () =>
                      SizedBox(
                        width: Get.width,
                        height: 134,
                        // decoration: BoxDecoration(
                        //   image: DecorationImage(
                        //     image: AssetImage(controller.coverPath.value),
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        child: controller.coverPath.isEmpty ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(svgPath + "upload_image.svg"),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text("Add Cover", style: Style.t_400_13gA,
                              ),
                            ),
                          ],
                        ) : Image.file(File(controller.coverPath.value)),
                      ),
                      ),
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          controller.getImage('profileImg', ImageSource.gallery);
                        },
                        child: DottedBorder(
                            color: Style.gray5C,
                            strokeWidth: 1,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(16),
                            child: Center(
                              child: Obx( () =>
                                  SizedBox(
                                    width: Get.width,
                                    height: 103,
                                    child: controller.profilePath.isEmpty ? Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(svgPath + "upload_image.svg"),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 6),
                                          child: Text(
                                            "Add Profile Picture",
                                            style: Style.t_400_13gA,
                                          ),
                                        )
                                      ],
                                    ) : Image.file(File(controller.profilePath.value)),
                                  ),
                              ),
                            )),
                      ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text("Your Name:",style: Style.t_400_16w,),
                        ),
                        Container(height: 44,decoration:  Style.inputBoxDecoration,width: Get.width,
                            child: TextField(
                              controller: controller.nameController,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              decoration: Style.inputTextDecorationNameProfile,
                            ),
                        )
                      ],
                    ),
                  ),flex: 2,)
                ],),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 10),
                    child: Text("Introduction Voice:",style: Style.t_400_16w,),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24,bottom: 8),
                    child: Text("About:",style: Style.t_400_16w,),
                  ),
                  Container(height: 196,decoration:  Style.inputBoxDecoration,width: Get.width,
                      child: Obx( () =>
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextField(
                                  controller: controller.aboutController,
                                  enabled: controller.editAbout.value,
                                  maxLines: 6,
                                  minLines: 5,
                                  textAlign: TextAlign.left,
                                  decoration: Style.inputTextDecorationAboutProfile),
                              Padding(
                                padding: const EdgeInsets.only(right: 5,bottom: 5),
                                child: InkWell(
                                  onTap: () => controller.editField('about'),
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    width: 44,
                                    height: 44,
                                    child: SvgPicture.asset(svgPath+"modify.svg",width: 17,height: 17,),
                                    decoration: BoxDecoration(
                                        color: Style.headerBackBtn,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(12)),
                                  ),
                                ),
                              )
                            ],
                          ),
                      ),
                  ),
                ]),
              Padding(
                padding: const EdgeInsets.only(top: 23,bottom: 13),
                child: Text("Social links:",style: Style.t_500_14g,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SvgPicture.asset(svgPath+"website.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 13),
                        child: Text("Website:",style: Style.t_400_16w,),
                      ),
                    ],
                  ),
                  Container(height: 44,decoration:  Style.inputBoxDecoration,width: Get.width,
                      child: TextField(
                          controller: controller.webSiteController,
                          textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add your Website link"))
                  )
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SvgPicture.asset(svgPath+"twitter.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 13),
                        child: Text("Twitter:",style: Style.t_400_16w,),
                      ),
                    ],
                  ),
                  Container(height: 44,decoration:  Style.inputBoxDecoration,width: Get.width,
                      child: TextField(
                          controller: controller.twitterController,
                          textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add your Twitter link"))
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SvgPicture.asset(svgPath+"youtube.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 13),
                        child: Text("YouTube:",style: Style.t_400_16w,),
                      ),
                    ],
                  ),
                  Container(height: 44,decoration:  Style.inputBoxDecoration,width: Get.width,
                      child: TextField(
                          controller: controller.youTubeController,
                          textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add your YouTube link"))
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SvgPicture.asset(svgPath+"instagram.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 13),
                        child: Text("Instagram:",style: Style.t_400_16w,),
                      ),
                    ],
                  ),
                  Container(height: 44,decoration:  Style.inputBoxDecoration,width: Get.width,
                      child: TextField(
                          controller: controller.instagramController,
                          textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add your Instagram link"))
                  )
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SvgPicture.asset(svgPath+"spotify.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 13),
                        child: Text("Spotify:",style: Style.t_400_16w),
                      ),
                    ],
                  ),
                  Container(height: 44,decoration:  Style.inputBoxDecoration,width: Get.width,
                      child: TextField(
                          controller: controller.spotifyController,
                          textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add your Spotify link"))
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SvgPicture.asset(svgPath+"soundcloud.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8,top: 13),
                        child: Text("SoundCloud:",style: Style.t_400_16w,),
                      ),
                    ],
                  ),
                  Container(height: 44,decoration:  Style.inputBoxDecoration,width: Get.width,
                      child: TextField(
                          controller: controller.soundCloudController,
                          textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration.copyWith(hintText: "Add your SoundCloud link"))
                  )
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 80, bottom: 30),
                child: ElevatedButton(
                  onPressed:() => controller.saveInfo(data: controller.accountInfo),
                  child:const Text("Save",style: TextStyle(color: Color(0xff283034))),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Color(0xffFFB800))
                        )
                    ),
                    fixedSize: MaterialStateProperty.all(Size(Get.width, 54)),
                    backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),),
              )

            ],
          ),
        ),
      ),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Get.back();
            },
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
            child: Text("Profile", style: Get.textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }
}
