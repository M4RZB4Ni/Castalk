import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Style  {

  static const String _svgPath = "assets/icons/";

  static const Color gray48 = Color(0xff484848);
  static const Color background =  Color(0xff242424);
  static  Color gray48op50 = const Color(0xff484848).withOpacity(0.5);
  static const Color gray38 = Color(0xff383838);
  static const Color gray58 = Color(0xff585858);
  static  Color gray32 = const Color(0xff3C3C3C).withOpacity(0.3);
  static const Color grayA1 = Color(0xffA8A8A8);
  static const Color gray2F = Color(0XFF2F2F2F);
  static const Color gray9D = Color(0XFF9D9D9D);
  static const Color gray86 = Color(0xff868686);
  static const Color grayD1 = Color(0xffD1D1D1);
  static const Color gray27 = Color(0xff272727);

  static const Color grayc4 = Color(0xffC4C4C4);
  static const Color divider = Color(0xff464646);
  static  Color grayTrans = const Color(0xff3C3C3C);
  static  Color driveBack = const Color(0xff303030).withOpacity(0.84);
  static const Color accentGold = Color(0xffFFB800);
  static Color iconBack = const Color(0xff121212).withOpacity(0.30);
  static Color headerDarkLayer = const Color(0xff1D2223);
  static Color glassBlack = const Color(0xff3B3B3B);
  static Color redAccent = const Color(0xffFF5959);
  static Color hintColor=const Color(0xff797979);

  static Color headerBackBtn = const Color(0xff808080).withOpacity(0.5);


  static TextStyle t_400_12w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_400_16w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16);
  static TextStyle t_400_14w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14);
  static TextStyle t_400_14g= const TextStyle(color: accentGold,fontWeight: FontWeight.w400,fontSize: 14);
  static TextStyle t_500_16w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16);
  static TextStyle t_400_18w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18);
  static TextStyle t_400_12g= const TextStyle(color: accentGold,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_700_24g= const TextStyle(color: accentGold,fontWeight: FontWeight.w700,fontSize: 27);
  static TextStyle t_400_12_9D= const TextStyle(color: gray9D,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_500_18g= const TextStyle(color: accentGold,fontWeight: FontWeight.w500,fontSize: 18);
  static TextStyle t_400_12r= TextStyle(color: redAccent,fontWeight: FontWeight.w400,fontSize: 12);
  static TextStyle t_500_14g= const TextStyle(color: accentGold,fontWeight: FontWeight.w500,fontSize: 14);
  static TextStyle t_500_14w= const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14);
  static TextStyle t_400_12_gray= const TextStyle(color: grayA1,fontWeight: FontWeight.w400,fontSize: 12);

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