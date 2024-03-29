import 'package:castalk/controllers/intro_controller.dart';
import 'package:castalk/controllers/auth_controller.dart';
import 'package:castalk/routes/pages.dart';
import 'package:castalk/style.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AuthController());

  Get.put(IntroController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        unselectedWidgetColor: Style.accentGold,
        disabledColor: Style.accentGold,
        primaryColor: const Color(0xff242424),
        backgroundColor: const Color(0xff242424),
        hintColor:const Color(0xff797979),
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor:Colors.transparent,elevation: 0),
        focusColor: const Color(0xffFFB800),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xffFFB800)),
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 24),
          bodyText1: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),
            overline: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w500,fontSize: 12),
            headline4: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w700,fontSize: 24),
            bodyText2: TextStyle(color: Color(0xffA6A6A6),fontWeight: FontWeight.w400,fontSize: 14),
            subtitle1: TextStyle(color: Color(0xff9D9D9D),fontWeight: FontWeight.w400,fontSize: 14),
            subtitle2: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w400,fontSize: 18),
            headline2: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w400,fontSize: 14),
            headline5: TextStyle(color: Color(0xff283034),fontWeight: FontWeight.w500,fontSize: 18),
            headline6: TextStyle(color: Style.grayA1,fontWeight: FontWeight.w400,fontSize: 12),
            button: TextStyle(color: Color(0xffFFB800),fontWeight: FontWeight.w400,fontSize: 18),
          headline3:TextStyle(color: Color(0xff3A3A3A),fontWeight: FontWeight.w700,fontSize: 18),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style:ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 17,horizontal: 58)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: ThemeData().colorScheme.secondary)
                    )
                ),
                backgroundColor:MaterialStateProperty.all(ThemeData().colorScheme.secondary),textStyle: MaterialStateProperty.all(const TextStyle(color: Color(0xff283034),fontSize: 18,fontWeight: FontWeight.w500)) )
        ),
        textButtonTheme: TextButtonThemeData(
            style:ButtonStyle(backgroundColor:MaterialStateProperty.all(ThemeData().backgroundColor),textStyle: MaterialStateProperty.all(TextStyle(color: ThemeData().colorScheme.secondary,fontSize: 18,fontWeight: FontWeight.w400)) )
        )
      ),
      title: 'Castalk',
      debugShowCheckedModeBanner: true,
      initialRoute: Pages.INITIAL_ROUTE,
      getPages: Pages.pages,
    );
  }
}
