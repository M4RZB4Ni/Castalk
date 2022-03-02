import 'package:castalk/controllers/intro_controller.dart';
import 'package:castalk/models/intro_model.dart';
import 'package:castalk/routes/routes.dart';
import 'package:castalk/style.dart';
import 'package:castalk/view/intro_signin/widgets/intro_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Intro extends GetView<IntroController>  {

  late PageController pageController=PageController(initialPage: 0,keepPage: true);

  Intro({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    controller.introGetAll();

    return Scaffold(
         resizeToAvoidBottomInset: false,
         appBar: AppBar(
             automaticallyImplyLeading: false,
             backgroundColor: Colors.transparent,
             centerTitle: true,title: Text("Welcome",style: Theme.of(context).textTheme.headline1)),
         backgroundColor: Style.background,
         body:controller.obx(
                 (state) => Column(
           children: [
             Expanded(child: PageView(
                 onPageChanged:(value) {
                 },
                 controller: pageController,
                 children:  [

                   IntroWidget(controller.introList.first),
                   IntroWidget(controller.introList.first),
                   IntroWidget(controller.introList.first),

                 ])),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 53,vertical: 35),
               child: Row(

                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Expanded(child:  SmoothPageIndicator(
                     controller: pageController,
                     count:  3,
                     axisDirection: Axis.horizontal,
                     effect:  const ScaleEffect(
                         spacing:  13.0,
                         dotWidth:  12.0,
                         dotHeight:  12.0,
                         paintStyle:  PaintingStyle.fill,
                         strokeWidth:  1.5,
                         dotColor:  Colors.white,
                         activePaintStyle: PaintingStyle.stroke,offset:10 ,
                         activeDotColor:  Colors.grey,activeStrokeWidth: 6
                     ),
                   )),
                   InkWell(child: Text("Skip",style: Theme.of(context).textTheme.button,),onTap: (){
                     Get.offAllNamed(Routes.SignIn);
                   }),

                 ],
               ),
             )
           ],
         ),
                  onLoading: const CircularProgressIndicator(),
         )
     );
  }


}




