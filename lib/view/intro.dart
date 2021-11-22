import 'package:castalk/apis/into_api_client.dart';
import 'package:castalk/models/intro_model.dart';
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
  late TabController tabController;
  late PageController pageController;


  @override
  void initState() {
    tabController= TabController(length: 3, vsync: this);
    pageController= PageController(initialPage: 0,keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    // TODO: implement build
     return WillPopScope(
         onWillPop:() async => false,
         child: FutureBuilder(
             future: introRepository.fetchIntros(),
             builder: (context,AsyncSnapshot<IntroModel> model) {
               return !model.hasData ? Scaffold(
                   resizeToAvoidBottomInset: false, // set it to false
                   appBar: AppBar(
                     backgroundColor: Colors.transparent,
                     centerTitle: true,title: Text("Welcome",style: Theme.of(context).textTheme.headline1),),
                   backgroundColor: Theme.of(context).backgroundColor,
                   body:
                   Column(
                     children: [
                       SizedBox(
                         width: w,
                           height: h-150,
                           child: TabBarView(
                           controller: tabController,
                           children: [

                             introWidgets(model.data,w,h),
                             introWidgets(model.data,w,h),
                             introWidgets(model.data,w,h),

                           ])),
                       SizedBox(
                         width: w/4,
                         height: 80,
                         child: SmoothPageIndicator(
                             controller: pageController,  // PageController
                             count:  3,
                             effect:  const WormEffect(),  // your preferred effect
                             onDotClicked: (index){

                             }
                         ),
                       )
                     ],
                   )
                 ) : const Text("Failed");
             })
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
              'https://picsum.photos/$w/${h-300}',
              fit: BoxFit.fill,
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




