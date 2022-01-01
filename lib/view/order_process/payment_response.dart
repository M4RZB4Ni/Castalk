import 'package:castalk/cicon.dart';
import 'package:castalk/customs/separator.dart';
import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentResponse extends StatefulWidget{
  const PaymentResponse({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PaymentResponseState();
  }


}

class PaymentResponseState extends State<PaymentResponse>{


  bool transSuccsessful=true;

  @override
  Widget build(BuildContext context) {



    double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transSuccsessful ?
          Align(child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 159),
                child: SvgPicture.asset(Cicon.pay_successful),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 87),
                child: Text("Payment Success",style: Style.t_500_24_lightGreen,),
              ),
            ],
          ),alignment: Alignment.center,) :

          Align(child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 159),
                child: SvgPicture.asset(Cicon.pay_unsuccessful),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 87),
                child: Text("Payment Failed",style: Style.t_500_24r,),
              ),
            ],
          ),alignment: Alignment.center,),

          Column(children: [
            _singleDataLine( firstText: "Amount", secondText: "25 \$",),
            _singleDataLine( firstText: "Gateway", secondText: "Paypal",),
            _singleDataLine( firstText: "Payment ID", secondText: "#2315881",),
            _singleDataLine(firstText: "Order Number", secondText: "10-16-2021  16:38:25",),
            _singleDataLine(firstText: "Date and time", secondText: "10-16-2021  16:38:25",),
            Visibility(child: _singleDataLine( firstText: "Error Code", secondText: "404"),visible: !transSuccsessful),

          ],),



          !transSuccsessful ?
          Padding(
          padding: const EdgeInsets.only(
            left: 27, right: 27, bottom: 59),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 9, top: 88),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            "Retry",
                            style: Style.t_500_18_back,
                          ),
                        ),
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(w, 54)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.only(left: 6, top: 6, bottom: 6)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    side: const BorderSide(color: Style.accentGold))),
                            backgroundColor: MaterialStateProperty.all(Style.accentGold)),
                      ),
                    )),
                Expanded(child: Padding(
                    padding: const EdgeInsets.only(
                        right: 0, left: 9, top: 88),
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      child: Text(
                        "Back",
                        style: Style.t_500_18g,
                      ),
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(w, 54)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.only(
                                  left: 6, top: 6, bottom: 6)),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  side: const BorderSide(color: Style.gray4C))),
                          backgroundColor:
                          MaterialStateProperty.all(Style.gray4C)),
                    ))),
              ],
            ),
          ) :
          Padding(
              padding: const EdgeInsets.only(
                  right: 0, left: 27, top: 88),
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text(
                  "Back",
                  style: Style.t_500_18g,
                ),
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(156, 54)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.only(
                            left: 6, top: 6, bottom: 6)),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side:  BorderSide(color: Style.gray4C))),
                    backgroundColor:
                    MaterialStateProperty.all(Style.gray4C)),
              ),
          )],
      ),

    );
  }

  _singleDataLine({required String firstText,required String secondText})
  {
    return Padding(
      padding: const EdgeInsets.only(top: 16,right: 37,left: 40),
      child: Row(children: [
        Text(firstText,style: Style.t_400_14_9d,),
        Expanded(child: MySeparator(height: 1,color: Style.grayA.withOpacity(0.15),)),
        Text(secondText,style: Style.t_400_14_9d,),

      ],),
    );
    

  }



  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 38, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text("Payment Response", style: Style.t_500_24w),


        ],
      ),
    );
  }




}