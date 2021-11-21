import 'package:castalk/apis/into_api_client.dart';
import 'package:castalk/models/intro_model.dart';
import 'package:flutter/material.dart';


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


  @override
  void initState() {
    tabController= TabController(length: 3, vsync: this);
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
               return !model.hasData ? Scaffold(backgroundColor: Theme.of(context).backgroundColor,
                   body:
                   TabBarView(
                       controller: tabController,
                       children: [

                         introWidgets(model.data,w,h),
                         introWidgets(model.data,w,h),
                         introWidgets(model.data,w,h),
                   ])
                 ) : const Text("Failed");
             })
     );
  }

  Widget introWidgets(IntroModel? model,double w,double h)
  {
      return Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            model!.imageUrl,
            height: w,
            width: h/1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 20),
          child: Text(model.header,style:TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 24,fontWeight: FontWeight.w500)),
        ),
        Text(model.header,style:Theme.of(context).textTheme.bodyText2),
      ],);
  }

}




