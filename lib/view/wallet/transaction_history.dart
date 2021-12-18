import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionHistory extends StatefulWidget{
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return TransactionHistoryState();
  }


}

class TransactionHistoryState extends State<TransactionHistory>{

  TextEditingController numberController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 160), child: header(w)),
      body: ListView.builder(itemBuilder: (context, index) {
          return transItem();
      },),
    );
  }


  Container  transItem() {
    return  Container(
      height: 74,
      margin: const EdgeInsets.only(top: 8,left: 15,right: 15),
      decoration: BoxDecoration(color:Style.gray2F,borderRadius: BorderRadius.circular(12)),
      child: Row(children: [
        Container (
            margin: const EdgeInsets.only(left: 6,right: 10),
            padding: const EdgeInsets.all(18),
            width: 57,
            height: 57,
            child: SvgPicture.asset(
              Cicon.arrowWithdraw,
              width: 17,
              height: 17,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Style.greenDark,
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
                  Text("Recive",style: Style.t_400_14w,),
                  Text("25 \$",style: Style.t_400_14w,),
                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9,top: 6,right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("For Subscribtion",style: Style.t_300_12w,),
                  Text("Today 8 : 48",style: Style.t_300_12_WhiteF3,),
                ],),
            ),
          ],
        )),

      ],),
    );
  }


  _searchBar(w)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 23),
              height: 44,
              decoration: BoxDecoration(
                  borderRadius:
                  const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                      width: 1, color: const Color(0xff484848))),
              width: w / 2.2,
              child: TextField(
                  controller: numberController,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 15),
                      hintText: "Sort : By date",
                      hintStyle:
                      TextStyle(color: Theme.of(context).hintColor),
                      fillColor: Colors.white))),


          Container(
            padding: const EdgeInsets.all(12),

            width: 44,
            height: 44,
            child: SvgPicture.asset(Cicon.search,width: 14,height: 14,),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),

            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(Cicon.filter,width: 14,height: 14,),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(Cicon.sort,width: 14,height: 14,color: Style.accentGold,),
            decoration: BoxDecoration(
                color: Style.gray58,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          )
        ],
      ),
    );

  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
      child: Column(
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
              Text("Transaction History", style: Style.t_500_24w),
              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  Cicon.question_mark,
                ),
                decoration: BoxDecoration(
                    color: Style.headerBackBtn,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)),
              ),

            ],
          ),
          _searchBar(w)
        ],
      ),
    );
  }



}