import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_casts_analytics.dart';
import 'my_casts_list.dart';

class MyCasts extends StatefulWidget{
  const MyCasts({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyCastsState();
  }


}

class MyCastsState extends State<MyCasts> with SingleTickerProviderStateMixin
{

  late final TabController _tabController=TabController(length: 2, vsync: this);


  String svgPath = "assets/icons/";
  late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _textTheme = Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
   // double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 130), child: header(w)),

      body: TabBarView(
        controller: _tabController,

        children: const [
          MyCastsList(),
          MyCastsAnalytics(),

        ],),


    );
  }


  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Column(
        children: [
          Row(
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
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text("My Casts", style: _textTheme.headline1),
                  ),
                ],
              ),
              const SizedBox(
                width: 44,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33),
            child:TabBar(
                labelStyle: _textTheme.headline1,
                controller: _tabController,
                indicatorColor: Style.accentGold,
                tabs: const [
                  Tab(text: "List"),
                  Tab(text: "Analytics"),
                ]),
          ),


        ],
      ),
    );
  }


}