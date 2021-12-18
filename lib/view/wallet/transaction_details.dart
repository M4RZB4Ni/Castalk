import 'package:castalk/customs/separator.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_virtual_keyboard/virtual_keyboard.dart';

class TransactionDetails extends StatefulWidget{
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TransactionDetailsState();
  }


}

class TransactionDetailsState extends State<TransactionDetails>{




  @override
  Widget build(BuildContext context) {



    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Align(child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 153,bottom: 0),

                width: 82,
                height: 82,
                child: const Icon(
                  Icons.arrow_downward,
                  size: 40,

                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: Style.greenDark,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20)),
              ),

              Text("Receive",style: Style.t_400_24_lightGreen,),
            ],
          ),alignment: Alignment.center,),

Column(children: [
  _singleDataLine(isHeader: true, firstText: "Amount", secondText: "25 \$",transSuccessful: false),
  _singleDataLine(isHeader: false, firstText: "Date and Time", secondText: "2020/20/20 8 : 48",transSuccessful: false),
  _singleDataLine(isHeader: false, firstText: "Initiate on", secondText: "2020/20/20 8 : 48",transSuccessful: false),
  _singleDataLine(isHeader: false, firstText: "Transition ID", secondText: "232as1d65w16e2",transSuccessful: false),
  _singleDataLine(isHeader: false, firstText: "From", secondText: "ID:2321487",transSuccessful: false),
  _singleDataLine(isHeader: false, firstText: "For", secondText: "Subscription",transSuccessful: false),
  _singleDataLine(isHeader: false, firstText: "Gateway", secondText: "Paypal",transSuccessful: false),
  _singleDataLine(isHeader: false, firstText: "Status", secondText: "Successful",transSuccessful: true),
],),




          Container(
            margin: const EdgeInsets.only(left: 24,bottom: 0),
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
        ],
      ),

    );
  }

  _singleDataLine({required bool isHeader,required String firstText,required String secondText,required bool transSuccessful})
  {
    if(isHeader)
      {
        return Padding(
          padding: const EdgeInsets.only(top: 16,right: 37,left: 40),
          child: Row(children: [
            Text(firstText,style: Style.t_400_14w,),
            Expanded(child: MySeparator(height: 1,color: Style.grayA.withOpacity(0.15),)),
            Text(secondText,style: Style.t_400_18g,),

          ],),
        );
      }
    return Padding(
      padding: const EdgeInsets.only(top: 16,right: 37,left: 40),
      child: Row(children: [
        Text(firstText,style: Style.t_300_14_WhiteF3,),
        Expanded(child: MySeparator(height: 1,color: Style.grayA.withOpacity(0.15),)),
        Text(secondText,style: transSuccessful ? Style.t_300_14_lightGreen :Style.t_300_14_WhiteF3,),

      ],),
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
      padding: const EdgeInsets.only(top: 38, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text("Transaction History", style: Style.t_500_24w),


        ],
      ),
    );
  }



}