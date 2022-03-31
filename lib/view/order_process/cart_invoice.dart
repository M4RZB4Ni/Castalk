import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CartInvoice extends GetView<CartInvoice>{

  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(Get.width, 110), child: header(Get.width)),
      body: SingleChildScrollView(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              transItem(),
              transItem(),
              transItem(),
            ],
            )),
          _searchBar(Get.width),
          Padding(
            padding: const EdgeInsets.only(top: 133,left: 27,right: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tax :",style: Style.t_500_18w,),


                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 31),
                          child: Text("9%",style: Style.t_500_14_G9D,),
                        ),
                        Text("3 \$",style: Style.t_500_18w,),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(height: 1,thickness: 1,color: Style.gray5C,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("You will pay :",style: Style.t_500_24w,),


                    Text("3 \$",style: Style.t_500_24g,),
                  ],
                ),

              ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 27),
            child: ElevatedButton(

              onPressed:() => debugPrint(""), child:
            Text("Proceed",style: Style.t_500_18a4,) ,style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 41,vertical: 17)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: const BorderSide(color: Style.accentGold)
                    )
                ),
                backgroundColor:MaterialStateProperty.all(Style.accentGold)),),
          )

        ],
      )),
    );
  }


  Container  transItem() {
    return  Container(
      height: 74,
      margin: const EdgeInsets.only(top: 8,left: 15,right: 15),
      decoration: BoxDecoration(color:Style.gray2F,borderRadius: BorderRadius.circular(12)),
      child: Row(

        children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SvgPicture.asset(Cicon.delete),
        ),
        Container (
            margin: const EdgeInsets.only(left: 12,right: 10),
            padding: const EdgeInsets.all(18),
            width: 57,
            height: 57,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12))),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 11,top: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Host Name",style: Style.t_400_14w),
                      Visibility(child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(decoration: BoxDecoration(color: Get.theme.focusColor,shape: BoxShape.circle),
                            width: 13,height: 13,child: const Icon(Icons.check,color: Style.background,size: 13,)),
                      ),visible: false,)
                    ],
                  ),
                  Text("15 \$",style: Style.t_500_18_LG,),

                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9,top: 6,right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("For Subscribtion",style: Style.t_300_10g9D,),
                  Text("15 \$",style: Style.t_500_18g,),
                ],),
            ),
          ],
        )),

      ],),
    );
  }
  _searchBar(w){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8,left: 8),
            child: Text("Discont code",style: Style.t_400_14w,),
          ),
          Container(
              height: 44,
              width: w,
              decoration: BoxDecoration(
                  borderRadius:
                  const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                      width: 1, color: const Color(0xff484848))),
              child: Row(
                children: [
                  // i must add sort section with state provider
                  Expanded(
                      flex: 3,
                      child: TextField(
                          controller: numberController,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: const EdgeInsets.only(
                                  top: 12, bottom: 12, left: 19),
                              hintText: "xxx - xxxx -xxx",
                              hintStyle:
                              TextStyle(color: Get.theme.hintColor),
                              fillColor: Colors.white))),
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: 68,
                    height: 44,
                    child: Text("Apply",style: Style.t_500_14_G34,),
                    decoration: BoxDecoration(
                        color: Style.accentGold,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(13)),
                  ),
                ],
              )),


        ],
      ),
    );
  }



  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
              Text("Cart", style: Style.t_500_24w),
              const SizedBox(width: 44,),

            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 33),
            child: Text("3 items"),
          )
        ],
      ),
    );
  }



}