import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:castalk/view/wallet/transaction_history.dart';
import 'package:castalk/view/wallet/wallet.dart';
import 'package:castalk/view/wallet/wallet_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WalletNav extends GetView<WalletNav>{

  int _currentIndex = 0;
  final List _children = const [
    Wallet(),
    TransactionHistory(),
    //WalletAnalytics(),
  ];
  String svgPath = "assets/icons/";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Style.gray38,
        body: _children[_currentIndex], // new
        bottomNavigationBar: Container(
          height: 64,
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 25),
          decoration: BoxDecoration(color: Style.gray38,borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
            borderRadius:  BorderRadius.circular(15),
            child: BottomNavigationBar(
              selectedLabelStyle: Style.t_400_12g,
              selectedItemColor: Style.accentGold,
              backgroundColor: Style.gray38,
              onTap: onTabTapped, // new
              currentIndex: _currentIndex, // new
              items:  [
                BottomNavigationBarItem(
                  backgroundColor: Style.gray38,
                  label: _currentIndex==0 ? "Wallet" : "",
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(Cicon.wallet_on,color: _currentIndex==0 ? Style.accentGold : Colors.white,),
                  ),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Style.gray38,

                  label: _currentIndex==1 ? "Transaction" : "",
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(Cicon.trans_history,color: _currentIndex==1 ? Style.accentGold : Colors.white),
                  ),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Style.gray38,

                  label: _currentIndex==2 ? "Analytics" : "",
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(Cicon.wallet_chart,color: _currentIndex==2 ? Style.accentGold : Colors.white),
                  ),
                ),

              ],
            ),
          ),
        ));
  }

  void onTabTapped(int index) {
    // setState(() {
    //   _currentIndex = index;
    // });
  }

}