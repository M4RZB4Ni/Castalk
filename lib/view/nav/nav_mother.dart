import 'package:castalk/style.dart';
import 'package:castalk/view/nav/explore/explore.dart';
import 'package:castalk/view/nav/home/home_feed.dart';
import 'package:castalk/view/nav/notifications.dart';
import 'package:castalk/view/nav/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavMother extends StatefulWidget{
  const NavMother({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NavMotherState();
  }


}

class NavMotherState extends State<NavMother>{

  int _currentIndex = 0;
  final List _children = [
    const HomeFeed(),
    const Explore(),
    Notifications(),
    Profile()
  ];
  String svgPath = "assets/icons/";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff242424),
        body: _children[_currentIndex], // new
        bottomNavigationBar: Container(
          height: 64,
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(15),shape: BoxShape.rectangle,boxShadow:  [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              spreadRadius: -12.0,
              blurRadius: 12.0,
            ),
          ]),
          child: ClipRRect(
            borderRadius:  BorderRadius.circular(15),
            child: BottomNavigationBar(
              selectedLabelStyle: Style.t_400_12g,
              selectedItemColor: Style.accentGold,
              backgroundColor: Colors.transparent,
              onTap: onTabTapped, // new
              currentIndex: _currentIndex, // new
              items:  [
                BottomNavigationBarItem(
                  backgroundColor: Style.gray38,
                  label: "Feed",
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(svgPath+"headphone.svg",color: _currentIndex==0 ? Style.accentGold : Colors.white,),
                  ),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Style.gray38,

                  label: "Explore",
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(svgPath+"search.svg",color: _currentIndex==1 ? Style.accentGold : Colors.white),
                  ),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Style.gray38,

                  label: "Notifications",
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(svgPath+"notif.svg",color: _currentIndex==2 ? Style.accentGold : Colors.white),
                  ),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Style.gray38,

                  label: "Profile",
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(svgPath+"profile.svg",color: _currentIndex==3 ? Style.accentGold : Colors.white),
                  ),
                ),
              ],
            ),
          ),


        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


}