import 'package:castalk/style.dart';
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

  String svgPath = "assets/icons/";


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Column(
          children: [
            Text("Wallet Balance",style: Style.t_500_18g,),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Text("27 \$",style: Style.t_500_36g,),
            ),
          ],
        ),

          Row(children: [
            Expanded(child:  Padding(
              padding: const EdgeInsets.only(left: 25,right: 9),
              child: _bigButton(iconName: "deposite", text: "Deposit", textColor: Style.t_500_18_5c, backColor: Style.accentGold),
            )),
            Expanded(child:  Padding(
              padding: const EdgeInsets.only(right: 25,left: 9),
              child: _bigButton(iconName: "withdraw", text: "Withdraw", textColor: Style.t_500_18_5c, backColor: Colors.white),
            )),
          ],),


          Text(
            "00 : 00 : 00 : 000",
            style: Style.t_500_24w,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Style.gray4D,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,bottom: 0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () => print(""),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      width: 44,
                      height: 44,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Style.redAccent, shape: BoxShape.circle),
                          width: 20,
                          height: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text("Record",style: Style.t_500_18a4,),
                    )
                  ]),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(148,54)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 6,top: 6,bottom: 6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: const BorderSide(color: Style.accentGold))),
                      backgroundColor:
                      MaterialStateProperty.all(Style.accentGold)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 27),
                  width: 54,
                  height: 54,
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset(svgPath+"play.svg"),
                  decoration: BoxDecoration(
                      color: Style.headerBackBtn,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
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
          SvgPicture.asset(svgPath+iconName+".svg"),
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
              svgPath + "question_mark.svg",
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
