import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_virtual_keyboard/virtual_keyboard.dart';

class Withdraw extends StatefulWidget{
  const Withdraw({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WithdrawState();
  }


}

class WithdrawState extends State<Withdraw>{




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
                Text("Wallet Balance",style: Style.t_500_18b,),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Text("0.00 \$",style: Style.t_500_36b,),
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
          Padding(
            padding: const EdgeInsets.only(left: 24,bottom: 16),
            child: Text("Your Balance is 27 \$",style: Style.t_400_16w,),
          ),

          Padding(
              padding: const EdgeInsets.only(bottom: 21,top: 16,left: 25),
              child:Align(alignment: Alignment.centerLeft,child: RichText(

                  text: TextSpan(
                  children: [
                    TextSpan(text:"Your Request will be processed and deposit to your\n",style: Style.t_400_14_grayA1),
                    TextSpan(text:"verified Financial Account",style: Style.t_400_14g),
                  ])),)),
          Padding(
            padding: const EdgeInsets.only(bottom: 49,left: 27),
            child: Align(alignment: Alignment.centerLeft,child:_bigButton(text: "Request Withdraw", textColor: Style.t_500_18_back, backColor: Colors.white)),
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
          fixedSize: MaterialStateProperty.all(Size(263,54)),
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
          Text("Withdraw", style: Style.t_500_24w),
          const SizedBox(width: 44,),


        ],
      ),
    );
  }



}