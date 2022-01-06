import 'package:castalk/style.dart';
import 'package:castalk/cicon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WalletState();
  }

}

class WalletState extends State<Wallet>{



  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 91),
          child: Column(
            children: [
              Text("Wallet Balance",style: Style.t_500_18g,),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Text("27 \$",style: Style.t_500_36g,),
              ),
            ],
          ),
        ),

          Row(children: [
            Expanded(child:  Padding(
              padding: const EdgeInsets.only(left: 25,right: 9),
              child: _bigButton(iconName: Cicon.deposite, text: "Deposit", textColor: Style.t_500_18_5c, backColor: Style.accentGold),
            )),
            Expanded(child:  Padding(
              padding: const EdgeInsets.only(right: 25,left: 9),
              child: _bigButton(iconName: Cicon.withdraw, text: "Withdraw", textColor: Style.t_500_18_5c, backColor: Colors.white),
            )),
          ],),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("History",style: Style.t_500_14w,),
                Text("All",style: Style.t_500_14g,),


              ],),
            ),
              SizedBox(
                height: h/2.0,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return transItem();
                  },
                ),
              ),
          ],
        )
        ],
      ),

    );
  }



    ElevatedButton  _bigButton({required iconName,required text,required var textColor,required backColor}){
      return ElevatedButton(
        onPressed: () => print(""),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          SvgPicture.asset(iconName),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(text,style: textColor,),
          )
        ]),
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(148,54)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.only(left: 6,top: 6,bottom: 6)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side:  BorderSide(color: backColor))),
            backgroundColor:
            MaterialStateProperty.all(backColor)),
      );
    }


  Container  transItem() {
    return  Container(
      height: 74,
      margin: const EdgeInsets.only(top: 8,left: 14,right: 14),
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

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
      child: Row(
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
          Text("Wallet", style: Style.t_500_24w),
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
    );
  }

}
