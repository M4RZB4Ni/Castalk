import 'package:flutter/material.dart';
import 'package:multi_select_item/multi_select_item.dart';

class Congratulations extends StatefulWidget{
  const Congratulations({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CongratulationsState();
  }

}

class CongratulationsState extends State<Congratulations>{

  MultiSelectController controller = MultiSelectController();


  @override
  void initState() {
    controller.set(20);

  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w,190),
      child:   Padding(
        padding: const EdgeInsets.only(top: 36),
        child: Column(children: [
          header(onlyTitle: true),
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 26,left: 26),
            child: Text("It’s great to see you here. now you can select your intrests to let castalk suggest personalized contents to you",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),),
          ),
          Align(alignment: Alignment.centerLeft,child: Padding(
            padding: const EdgeInsets.only(top: 38,right: 0,left: 42),
            child: Text("${controller.selectedIndexes.length} Item selected",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2),
          )),
        ],),
      ),),
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 2/3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 7,
          ), itemBuilder: (BuildContext context, int index) {
          return MultiSelectItem(
              isSelecting: controller.isSelecting,
              onSelected: () {
                setState(() {
                  controller.toggle(index);
                });
              },
              child:itemType(!controller.isSelected(index))

          );
        },
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 59,left: 26),
        child: ElevatedButton(onPressed:() => print(""), child:const Text("Let’s Listen",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Color(0xffFFB800))
                )
            ),
            backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),),
      ),





    );
  }
  header({required bool onlyTitle})
  {
    return   Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(visible: !onlyTitle,child: Container(width: 44,height: 44,child: const Icon(Icons.arrow_back_outlined) ,decoration: BoxDecoration(color: Colors.grey.shade500,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(12)),)),
          Text("Congratulations!",style: Theme.of(context).textTheme.headline1!.copyWith(color: const Color(0xffFFB800))),
          Visibility(visible: !onlyTitle,child:const SizedBox(width: 44,)),

        ],
      ),
    );
  }

  Container itemType(bool isSelected)
  {
    return  Container(decoration: BoxDecoration(border: Border.all(color: isSelected? const Color(0xff484848) :Theme.of(context).focusColor,width: 1),
        borderRadius:const BorderRadius.all(Radius.circular(12)),color: !isSelected ? Theme.of(context).focusColor.withOpacity(0.2) : Theme.of(context).backgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(visible: !isSelected,child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 6,top: 6),
                child: Container(height: 13,width: 13,decoration:
                BoxDecoration(color: Theme.of(context).focusColor,borderRadius: BorderRadius.circular(12)),
                    child: Icon(Icons.check,size: 13,color: Theme.of(context).backgroundColor)),
              )
            ],
          )),
          Icon(Icons.four_g_mobiledata_outlined,color: isSelected ? Color(0xff9D9D9D) : Colors.white,size: 50),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text("Network",style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.w500,fontSize: !isSelected ? 18: 14,color:!isSelected ? Colors.white :Theme.of(context).focusColor ),),
          )
        ],),);
  }


}
