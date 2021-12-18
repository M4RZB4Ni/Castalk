import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_virtual_keyboard/virtual_keyboard.dart';

class Deposit extends StatefulWidget{
  const Deposit({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DepositState();
  }


}

class DepositState extends State<Deposit>{


  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {



    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Column(
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


          Container(
            padding: const EdgeInsets.only(bottom: 37,top: 61),
            width: w/2,
            child: VirtualKeyboard(
              textColor: Style.gray90,
              fontSize: 24,
              alwaysCaps: true,
              height: 231,

              // [0-9] + .
                type: VirtualKeyboardType.Numeric,
                // Callback for key press event
                onKeyPress: (key) => print(key.text)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24,bottom: 16),
                child: Text("Select your payment method:",style: Style.t_400_16w,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(Cicon.webmoney),
                  SvgPicture.asset(Cicon.visa),
                  SvgPicture.asset(Cicon.paypal),
                  SvgPicture.asset(Cicon.discover),
                  SvgPicture.asset(Cicon.mastercard),
                ],),
            ],
          ),

    Padding(
    padding: const EdgeInsets.only(bottom: 21,top: 16,left: 25),
    child:Align(alignment: Alignment.centerLeft,child: Text("You will be redirected to Paypal gateway",style: Style.t_400_14_grayA1,),)),
          Padding(
            padding: const EdgeInsets.only(bottom: 49,left: 27),
            child: Align(alignment: Alignment.centerLeft,child:_bigButton(text: "Proceed", textColor: Style.t_500_18_back, backColor: Style.accentGold)),
          ),
        ],
      ),

    );
  }


  ElevatedButton  _bigButton({required text,required var textColor,required backColor}){
    return ElevatedButton(
      onPressed: () => print(""),
      child: Text(text,style: textColor,),
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
          Text("Deposit", style: Style.t_500_24w),
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