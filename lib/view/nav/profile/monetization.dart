import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Monetization extends StatefulWidget{
  const Monetization({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MonetizationState();
  }

}

class MonetizationState extends State<Monetization>{

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: SizedBox(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80,bottom: 120,right: 14,left:14),
                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text:"To make a creator account you have to add a working credit id/number to let us transfer money to you as uttered in \n",style: Style.t_400_14w),
                      TextSpan(text:"creator users agreement.\n",style: Style.t_400_14g),
                      TextSpan(text:"By doing this you will be considerd a creator member and will have access to pro tools and options to analys and promot\n your contents.\nthis procedure may take 1 or 2 days. ",style: Style.t_400_14w),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14,left:14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text("Please select withdraw method of payment :",style: Style.t_400_16w,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(svgPath+"webmoney.svg"),
                        SvgPicture.asset(svgPath+"visa.svg"),
                        SvgPicture.asset(svgPath+"paypal.svg"),
                        SvgPicture.asset(svgPath+"discover.svg"),
                        SvgPicture.asset(svgPath+"mastercard.svg"),
                      ],),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 51,right: 24,left:24),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add your Email:",style: Style.t_400_16w),
                        Padding(
                            padding: const EdgeInsets.only(top: 8,bottom: 9),
                            child:Container(height: 55,decoration:  Style.inputBoxDecoration,width: w,
                                child: TextField(
                                    controller: numberController,
                                    textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)

                            )),


                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Other options:",style: Style.t_400_16w),
                          Padding(
                              padding: const EdgeInsets.only(top: 8,bottom: 9),
                              child:Container(height: 55,decoration:  Style.inputBoxDecoration,width: w,
                                  child: TextField(
                                      controller: numberController,
                                      textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)

                              )),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45,left: 28,bottom: 28),
                child: ElevatedButton(onPressed:() => print(""), child:const Text("Send Request",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Color(0xffFFB800))
                        )
                    ),
                    backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),),
              )
            ],
          ),
        )
      ),
    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child:  Row(
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
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Text("Monetization", style: _textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }

}