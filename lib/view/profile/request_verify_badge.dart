import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../style.dart';

class RequestVerifyBadge extends StatefulWidget{
  const RequestVerifyBadge({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RequestVerifyBadgeState();
  }


}

class RequestVerifyBadgeState extends State<RequestVerifyBadge>{

  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _textTheme = Theme.of(context).textTheme;
    double w = MediaQuery.of(context).size.width;
   // double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),
      backgroundColor: Style.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80,bottom: 120,right: 14,left:14),
            child: RichText(text: TextSpan(
                children: [
                  TextSpan(text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec bibendum velit, neque morbi. Lacus nisl auctor faucibus enim, pretium. Diam sollicitudin pellentesque eu odio venenatis, in congue et, ultricies. Nunc quis nullam tellus urna nisl aliquam.",style: Style.t_400_14w),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Upload Your Document:",style: Style.t_400_16w,),
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(svgPath+"upload.svg"),
                      decoration: BoxDecoration(
                          color: Style.accentGold,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Expanded(flex:12,child:  Padding(
                        padding: const EdgeInsets.only(top: 0,bottom: 9,left: 10),
                        child:Container(height: 55,decoration:  Style.inputBoxDecoration,width: w,
                            child: TextField(
                                controller: numberController,
                                textAlign: TextAlign.left,maxLines: 1,decoration: Style.inputTextDecoration)

                        )))
                  ],
                )



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
            child: Text("Request Verify badge", style: _textTheme.headline1),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }


}