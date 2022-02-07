import 'package:castalk/apis/into_api_client.dart';
import 'package:castalk/models/intro_model.dart';
import 'package:castalk/style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Intro extends StatefulWidget{
  const Intro({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return IntroState();
  }


}

class IntroState extends State<Intro> with SingleTickerProviderStateMixin{
  final IntroApiClient introRepository=IntroApiClient();
  late PageController pageController;
  int activeStepe=0;


  @override
  void initState() {
    pageController= PageController(initialPage: 0,keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

     return Scaffold(
         resizeToAvoidBottomInset: false, // set it to false
         appBar: AppBar(
             automaticallyImplyLeading: false,
             backgroundColor: Colors.transparent,
             centerTitle: true,title: Text("Welcome",style: Theme.of(context).textTheme.headline1)),
         backgroundColor: Style.background,
         body:
         Column(
           children: [
             Expanded(child: PageView(
                 onPageChanged:(value) {
                   setState(() {
                     activeStepe=value;
                   });
                 },
                 controller: pageController,
                 children: [

                  // introWidgets(model.data,w,h),
                  // introWidgets(model.data,w,h),
                  // introWidgets(model.data,w,h),

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
                   InkWell(child: Text("Skip",style: Theme.of(context).textTheme.button,)),


                 ],
               ),
             )
           ],
         )
     );
  }

  Widget introWidgets(IntroModel? model,double w,double h)
  {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              //model!.imageUrl,
              'https://arga-mag.com/file/img/2021/01/podcast-3.jpg',
              fit: BoxFit.fitHeight,
              height: h/1.9,
              width: w,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10,left: 31),
          child: Align(alignment: Alignment.centerLeft,child: Text("Play and Share",style:TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 24,fontWeight: FontWeight.w500))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Text("Using Castalk you can easily listen to your favorite tunes and share them with friends. Your friends has no need to create account to listen to",style:Theme.of(context).textTheme.bodyText2,textAlign: TextAlign.start,textDirection: TextDirection.ltr,),
        ),
      ],);
  }

}




