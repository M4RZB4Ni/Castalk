import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Style  {

  static const String _svgPath = "assets/icons/";

  static const Color gray48 = Color(0xff484848);
  static const Color background =  Color(0xff242424);
  static  Color gray48op50 = const Color(0xff484848).withOpacity(0.5);
  static  Color gray80op50 = const Color(0xff808080).withOpacity(0.5);
  static const Color gray38 = Color(0xff383838);
  static const Color gray58 = Color(0xff585858);
  static  Color grayTrans = const Color(0xff3C3C3C);
  static  Color grayTrans03 = const Color(0xff3C3C3C).withOpacity(0.5);
  static  Color gray3cop30 = const Color(0xff3C3C3C).withOpacity(0.3);
  static  Color grayC3_half = const Color(0xff3C3C3C).withOpacity(0.5);
  static const Color grayA1 = Color(0xffA8A8A8);
  static const Color grayA4 = Color(0xff4A4A4A);
  static const Color grayA = Color(0xffAAAAAA);
  static const Color gray2b = Color(0xff2B2B2B);
  static const Color gray2F = Color(0XFF2F2F2F);
  static const Color gray9D = Color(0XFF9D9D9D);
  static const Color whiteF3 = Color(0xffF3F3F3);
  static const Color gray86 = Color(0xff868686);
  static const Color grayD1 = Color(0xffD1D1D1);
  static const Color gray27 = Color(0xff272727);
  static const Color gray5C = Color(0xff5C5C5C);
  static const Color gray4D = Color(0XFF4D4D4D);
  static const Color gray90 = Color(0xff909090);
  static const Color gray4C = Color(0XFF4C4C4C);
  static const Color gray32 = Color(0xff323232);
  static const Color green = Color(0xff30FF51);
  static const Color lightGreen = Color(0xff7CFF4E);
  static const Color greenDark = Color(0xff425236);
  static const Color greenDarker = Color(0xff364D52);
  static const Color redDark = Color(0xff523636);
  static const Color lightBrown = Color(0xff524A36);


  static const Color grayc4 = Color(0xffC4C4C4);
  static  Color whiteHalf = Colors.white.withOpacity(0.5);
  static  Color white20 = Colors.white.withOpacity(0.20);
  static  Color white15 = Colors.white.withOpacity(0.15);
  static const Color divider = Color(0xff464646);
  static  Color driveBack = const Color(0xff303030).withOpacity(0.84);
  static const Color accentGold = Color(0xffFFB800);
  static const Color halfGold = Color(0xffFFDB7D);
  static Color iconBack = const Color(0xff121212).withOpacity(0.30);
  static Color headerDarkLayer = const Color(0xff1D2223);
  static Color glassBlack = const Color(0xff3B3B3B);
  static Color redAccent = const Color(0xffFF5959);
  static Color hintColor=const Color(0xff797979);
  static Color purple=const Color(0xff6486FF);
  static Color blue=const Color(0xff00A3FF);

  static Color headerBackBtn = const Color(0xff808080).withOpacity(0.5);

  static TextStyle t_300_10g9D= const TextStyle(color: gray9D,fontWeight: FontWeight.w300,fontSize: 10);
  static TextStyle t_300_12_WhiteF3= const TextStyle(color: whiteF3,fontWeight: FontWeight.w300,fontSize: 12);
  static TextStyle t_300_14_WhiteF3= const TextStyle(color: whiteF3,fontWeight: FontWeight.w300,fontSize: 14);
  static TextStyle t_300_14_lightGreen= const TextStyle(color: lightGreen,fontWeight: FontWeight.w300,fontSize: 14);
  static TextStyle t_300_12w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 12);
  static TextStyle t_400_12w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_400_16w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16);
  static TextStyle t_400_14w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14);
  static TextStyle t_400_18r=  TextStyle(color: redAccent,fontWeight: FontWeight.w400,fontSize: 14);
  static TextStyle t_400_14wh=  TextStyle(color: whiteHalf,fontWeight: FontWeight.w400,fontSize: 14);
  static TextStyle t_400_13gA= const TextStyle(color: grayA,fontWeight: FontWeight.w400,fontSize: 13);
  static TextStyle t_400_14g= const TextStyle(color: accentGold,fontWeight: FontWeight.w400,fontSize: 14);
  static TextStyle t_400_14_grayA1= const TextStyle(color: grayA1,fontWeight: FontWeight.w400,fontSize: 14);
  static TextStyle t_400_12_grayA1= const TextStyle(color: grayA1,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_400_24_lightGreen= const TextStyle(color: lightGreen,fontWeight: FontWeight.w400,fontSize: 24);
  static TextStyle t_500_16w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16);
  static TextStyle t_500_16g90= const TextStyle(color: gray90,fontWeight: FontWeight.w500,fontSize: 16);
  static TextStyle t_400_18w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18);
  static TextStyle t_400_18g= const TextStyle(color: accentGold,fontWeight: FontWeight.w400,fontSize: 18);
  static TextStyle t_400_12g= const TextStyle(color: accentGold,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_700_24g= const TextStyle(color: accentGold,fontWeight: FontWeight.w700,fontSize: 24);
  static TextStyle t_700_14b= const TextStyle(color: background,fontWeight: FontWeight.w700,fontSize: 14);
  static TextStyle t_700_18w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18);
  static TextStyle t_400_22w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 22);
  static TextStyle t_700_36w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 36);
  static TextStyle t_500_22w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 22);
  static TextStyle t_400_12_9D= const TextStyle(color: gray9D,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_500_18g= const TextStyle(color: accentGold,fontWeight: FontWeight.w500,fontSize: 18);
  static TextStyle t_500_18b=  TextStyle(color: blue,fontWeight: FontWeight.w500,fontSize: 18);
  static TextStyle t_500_18w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18);
  static TextStyle t_500_18_5c= const TextStyle(color: gray5C,fontWeight: FontWeight.w500,fontSize: 18);
  static TextStyle t_500_18_back= const TextStyle(color: background,fontWeight: FontWeight.w500,fontSize: 18);

  static TextStyle t_500_18a4= const TextStyle(color: Style.grayA4,fontWeight: FontWeight.w500,fontSize: 18);

  static TextStyle t_400_12r= TextStyle(color: redAccent,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_500_14g= const TextStyle(color: accentGold,fontWeight: FontWeight.w500,fontSize: 14);
  static TextStyle t_500_24w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 24);
  static TextStyle t_500_36g= const TextStyle(color: accentGold,fontWeight: FontWeight.w500,fontSize: 36);
  static TextStyle t_500_36b=  TextStyle(color: blue,fontWeight: FontWeight.w500,fontSize: 36);
  static TextStyle t_500_14w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14);
  static TextStyle t_500_12w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12);
  static TextStyle t_500_10_9d= const TextStyle(color: gray9D,fontWeight: FontWeight.w500,fontSize: 10);
  static TextStyle t_500_10w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 10);
  static TextStyle t_500_12g= const TextStyle(color: accentGold,fontWeight: FontWeight.w500,fontSize: 12);
  static TextStyle t_500_14r=  TextStyle(color: redAccent,fontWeight: FontWeight.w500,fontSize: 14);
  static TextStyle t_500_14_G9D= const TextStyle(color: gray9D,fontWeight: FontWeight.w500,fontSize: 14);
  static TextStyle t_400_12_gray= const TextStyle(color: grayA1,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_400_12_green= const TextStyle(color: green,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle buttonDarkStyle= const TextStyle(color: accentGold, fontSize: 18, fontWeight: FontWeight.w500);
  static List<Color> chartGradiant= [accentGold.withOpacity(0.1), accentGold.withOpacity(0.4)];
  static LinearGradient sliderGradiant= const LinearGradient(
      colors: <Color> [
        Color(0xff5CBD3A),
        Color(0xffFFB800),
      ]
  );


  static BoxDecoration inputBoxDecoration=BoxDecoration(borderRadius:   const BorderRadius.all(Radius.circular(12)),border:  Border.all(width: 1,color: gray48));
  static BoxDecoration dropDownDecoration=BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(12)),border: Border.all(width: 1,color: const Color(0xff484848)));
  static InputDecoration inputTextDecoration=InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
      hintText: "Copon name",hintStyle: TextStyle(color: hintColor),fillColor: Colors.white);

  static InputDecoration inputSearchTextDecoration=InputDecoration(border: InputBorder.none,isDense: false,contentPadding: const EdgeInsets.only(top: 12,bottom: 12,left: 19),
      hintText: "Copon name",hintStyle: TextStyle(color: hintColor),fillColor: Colors.white,icon: SvgPicture.asset(
        _svgPath + "search.svg",
        width: 14,
        height: 14,
        color: gray86,
      ));



}