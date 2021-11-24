import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{
  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SigninState();
  }

}

class SigninState extends State<SignIn>{

  List<dynamic> cCodes=[];
  static const TextStyle dropStyle=TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400);
  TextEditingController numberController=TextEditingController();
  BoxDecoration boxDecorations=BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(12)),border: Border.all(width: 1,color: const Color(0xff484848)));

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,title: Text("Log in",style: Theme.of(context).textTheme.headline1)),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 100,width: w,),
              Column(
                children: [
                  Text("Use your mobile number to signin",style: Theme.of(context).textTheme.bodyText1),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 9),
                    child: Container(height: 55,decoration:  boxDecorations,width: w,child: DropdownButtonHideUnderline(child: DropdownButton(style: dropStyle,items:cCodes.map((e) => DropdownMenuItem(child: Text(e.toString(),style: dropStyle,textDirection: TextDirection.ltr))).toList() ))),
                  ),
                  Container(height: 55,decoration:  boxDecorations,width: w,
                      child: TextField(
                          controller: numberController,
                          textAlign: TextAlign.left,maxLines: 1,decoration: InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
                          hintText: "Add your Number eg: 123 - 4567 - 890",hintStyle: TextStyle(color: Theme.of(context).hintColor),fillColor: Colors.white))

                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text("A verification code will send to the number",style: Theme.of(context).textTheme.subtitle1),
                  ),

                  ElevatedButton(onPressed:() => print(""), child:const Text("Send OTP",style: TextStyle(color: Color(0xff283034)),) ,style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: const BorderSide(color: Color(0xffFFB800))
                        )
                    ),
                    backgroundColor:MaterialStateProperty.all(const Color(0xffFFB800)),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) ),)
              ],)
            ],
          ),
        ),



    );
  }

}