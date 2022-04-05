import 'package:castalk/cicon.dart';
import 'package:castalk/routes/routes.dart';
import 'package:castalk/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../controllers/analytics_controller.dart';
import '../../../../controllers/mycasts_controller.dart';


class MyCastsAnalytics extends GetView<AnalyticsController>{

  TextEditingController numberController = TextEditingController();
  var listensK = '${(Get.find<AnalyticsController>().analyticsList[0].data!.listens! / 1000).toStringAsFixed(0)}K';
  var followersK = '${(Get.find<AnalyticsController>().analyticsList[0].data!.followers! / 1000).toStringAsFixed(0)}K';
  var postsK = '${(Get.find<AnalyticsController>().analyticsList[0].data!.posts! / 1000).toStringAsFixed(0)}K';
  var playsK = '${(Get.find<AnalyticsController>().analyticsList[0].data!.plays! / 1000).toStringAsFixed(0)}K';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Style.background,
      body: SingleChildScrollView(child:
          Column(
            children: [
              _tripleHeader(Get.width),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(children: [
                Expanded(flex: 2,child:Text("Plays :", style: Style.t_500_16w)),
                Expanded(flex: 3,child: Container(height: 44,decoration:  Style.dropDownDecoration,width: Get.width,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Get.theme.copyWith(
                          canvasColor: Style.background),
                          child: GetBuilder<MyCastsController>(builder: (controller){
                            return DropdownButton(
                                icon: const Padding(
                                  padding: EdgeInsets.only(right: 15,bottom: 0),
                                  child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 28,),
                                ),
                                isDense: false,
                                value: controller.charDropValue.toString(),
                                style: Get.textTheme.bodyText2,
                                items: controller.cCodes.map((selectedValue) => DropdownMenuItem(child: Text(selectedValue.toString(),style: Style.t_400_12w),value: selectedValue)).toList(),
                                onChanged: (newValue) {
                                  controller.charDropSetSelected(newValue.toString());
                                },
                            );
                          },),
                      ),
                    )
                ))
                )
              ],),
            ),
              _firstChartSection(),
              const Padding(
              padding: EdgeInsets.only(top: 24,right: 12,left: 12,bottom: 30),
              child: Divider(height: 1,color: Style.divider,thickness: 1,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(children: [
                Expanded(flex: 2,child:Text("Reaches :", style: Style.t_500_16w)),
                Expanded(flex: 3,child: Container(height: 44,decoration:  Style.dropDownDecoration,width: Get.width,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Get.theme.copyWith(
                          canvasColor: Style.background),
                          child: GetBuilder<MyCastsController>(builder: (controller){
                            return DropdownButton(
                                icon: const Padding(
                                  padding: EdgeInsets.only(right: 15,bottom: 0),
                                  child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 28,),
                                ),
                                isDense: false,
                                value: controller.reachesDropValue.toString(),
                                style: Get.textTheme.bodyText2,
                                items: controller.cCodes.map((selectedValue) => DropdownMenuItem(child: Text(selectedValue.toString(),style: Style.t_400_12w),value: selectedValue)).toList(),
                                onChanged: (newValue) {
                                  controller.reachesDropSetSelected(newValue.toString());
                                },
                            );
                          },),
                      ),
                    )
                ))
                )
              ],),
            ),
            _reachesHeader(Get.width),
            _secondChartSection(),
            const Padding(
              padding: EdgeInsets.only(top: 24,right: 12,left: 12),
              child: Divider(height: 1,color: Style.divider,thickness: 1,),
            ),
            _mostPlayedSection(Get.width, Get.height),
            const Padding(
              padding: EdgeInsets.only(top: 24,right: 12,left: 12),
              child: Divider(height: 1,color: Style.divider,thickness: 1,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25,left: 25,top: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0,left: 0,bottom: 6),
                    child: Text("Audience :",style: Style.t_500_16w,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(),
                      Column(
                        children: [
                          Text('${Get.find<AnalyticsController>().analyticsList[0].data!.audience!.gender!.female!}% Female',style: Style.t_500_12w,),
                          Container(
                              width: Get.width/2,
                              height: 144,
                              color: Style.background,
                              child: Stack(children: [
                                Center(child: Text("Gender",style: Style.t_500_16g90,)),
                                PieChart(
                                  PieChartData(
                                      sectionsSpace: 5,
                                      centerSpaceRadius: 50,
                                      sections: showingSections()),
                                ),
                              ],)
                          ),
                          Text('${Get.find<AnalyticsController>().analyticsList[0].data!.audience!.gender!.male!}% Male',style: Style.t_500_12g,),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24,right: 12,left: 12,bottom: 33),
              child: Divider(height: 1,color: Style.divider,thickness: 1,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(children: [
                Expanded(flex: 2,child:Text("Earnings :", style: Style.t_500_16w)),
                Expanded(flex: 3,child: Container(height: 44,decoration:  Style.dropDownDecoration,width: Get.width,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Get.theme.copyWith(
                          canvasColor: Style.background),
                          child: GetBuilder<MyCastsController>(builder: (controller){
                            return DropdownButton(
                              icon: const Padding(
                                padding: EdgeInsets.only(right: 15,bottom: 0),
                                child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 28,),
                              ),
                              isDense: false,
                              value: controller.earningsDropValue.toString(),
                              style: Get.textTheme.bodyText2,
                              items: controller.cCodes.map((selectedValue) => DropdownMenuItem(child: Text(selectedValue.toString(),style: Style.t_400_12w),value: selectedValue)).toList(),
                              onChanged: (newValue) {
                                controller.earningsDropSetSelected(newValue.toString());
                              },
                            );
                          },),
                      ),
                    )
                ))
                )
              ],),
            ),
            _thirdChartSection(),
            const Padding(
              padding: EdgeInsets.only(top: 0,right: 12,left: 12,bottom: 0),
              child: Divider(height: 1,color: Style.divider,thickness: 1,),
            ),
            _bestSellingSection(Get.width, Get.height)
          ],)
        ,),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      switch (i) {
        case 0:
          return PieChartSectionData(
            showTitle: false,
            color: Style.accentGold,
            value: Get.find<AnalyticsController>().analyticsList[0].data!.audience!.gender!.male!.toDouble(),
            radius: 16,
          );
        case 1:
          return PieChartSectionData(
            showTitle: false,
            color: Colors.white,
            value: Get.find<AnalyticsController>().analyticsList[0].data!.audience!.gender!.female!.toDouble(),
            radius: 16,
          );
        default:
          throw Error();
      }
    });
  }

  _mostPlayedSection(w,h)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24,left: 27,bottom: 18),
          child: Text("Most played Episodes :",style: Style.t_500_16w,),
        ),
        SizedBox(
          height: 224,
          width: w,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.analyticsList[0].data!.most_played_episode!.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return controller.analyticsList[0].data!.most_played_episode!.isEmpty ? 'There is no item!' : _mostPlayedItem(w, h, index);
            },
          ),
        ),
      ],
    );
  }

  _bestSellingSection(w,h)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24,left: 27,bottom: 18),
          child: Text("Best Selling :",style: Style.t_500_16w,),
        ),
        SizedBox(
          height: 224,
          width: w,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.analyticsList[0].data!.audience!.best_selling!.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return controller.analyticsList[0].data!.audience!.best_selling!.isEmpty ? 'There is no item!' : _bestSellingItem(w, h, index);
            },
          ),
        ),
      ],
    );
  }

  _mostPlayedItem(w, h, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: SizedBox(
        width: w,
        height: 60,
        child: Row(children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(controller.analyticsList[0].data!.most_played_episode![index].name!.length > 26 ? controller.analyticsList[0].data!.most_played_episode![index].name!.substring(0,26)+"..." : controller.analyticsList[0].data!.most_played_episode![index].name!,style: Style.t_400_18g,),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: SvgPicture.asset(Cicon.mic,color: Style.whiteHalf),
                          ),
                          Text(controller.analyticsList[0].data!.most_played_episode![index].description!, style:Style.t_400_14wh,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 34),
                        child: Text(playsK, style: Style.t_400_14wh),
                      ),
                    ],),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 6,top: 6,bottom: 6),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(Cicon.arrow_right,width: 5,height: 5,),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Style.grayC3_half,
                borderRadius: BorderRadius.circular(12),
              ), /* add child content here */
            ),
          ),
        ],),),
    );
  }

  _bestSellingItem(w, h, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: SizedBox(
        width: w,
        height: 60,
        child: Row(children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(controller.analyticsList[0].data!.audience!.best_selling![index].name!.length > 26 ? controller.analyticsList[0].data!.audience!.best_selling![index].name!.substring(0,26)+"..." : controller.analyticsList[0].data!.audience!.best_selling![index].name!,style: Style.t_400_18g,),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: SvgPicture.asset(Cicon.mic,color: Style.whiteHalf),
                          ),
                          Text(controller.analyticsList[0].data!.audience!.best_selling![index].description!, style:Style.t_400_14wh,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 34),
                        child: Text(playsK, style: Style.t_400_14wh),
                      ),
                    ],),
                ),

              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 6,top: 6,bottom: 6),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(Cicon.arrow_right,width: 5,height: 5,),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Style.grayC3_half,
                borderRadius: BorderRadius.circular(12),
              ), /* add child content here */
            ),
          ),
        ],),),
    );
  }

  _tripleHeader(w)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 35,bottom: 30,right: 25,left: 25),
      child: Container(
          padding: const EdgeInsets.all(38),
          height: 135,width: w,decoration:  Style.inputBoxDecoration.copyWith(borderRadius: const BorderRadius.all(Radius.circular(24))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(int.parse(controller.analyticsList[0].data!.listens!.toString()) < 1000 ? controller.analyticsList[0].data!.listens!.toString() : int.parse(controller.analyticsList[0].data!.listens!.toString()) >= 1000 ? listensK : '', style: Style.t_500_24w),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Listens",style: Style.t_500_14_G9D),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(int.parse(controller.analyticsList[0].data!.followers!.toString()) < 1000 ? controller.analyticsList[0].data!.followers!.toString() : int.parse(controller.analyticsList[0].data!.followers!.toString()) >= 1000 ? followersK : '', style: Style.t_500_24w),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Followers",style: Style.t_500_14_G9D),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(int.parse(controller.analyticsList[0].data!.posts!.toString()) < 1000 ? controller.analyticsList[0].data!.posts!.toString() : int.parse(controller.analyticsList[0].data!.posts!.toString()) >= 1000 ? postsK : '', style: Style.t_500_24w),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Posts",style: Style.t_500_14_G9D),
                  ),
                ],
              )
            ],)
      ),
    );
  }

  _reachesHeader(w)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 35,bottom: 30,right: 25,left: 25),
      child: Container(
          padding: const EdgeInsets.only(top: 14,bottom: 14,right: 12,left: 12),
          height: 100,width: w,decoration:  Style.inputBoxDecoration.copyWith(borderRadius: const BorderRadius.all(Radius.circular(24)),color: Style.gray2b,border: Border.all(color: Style.gray2b)),
          child: Column(
            children: [
              Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                    Text("Explore",style: Style.t_400_14g,),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text('${(controller.analyticsList[0].data!.reaches!.explore!)}%', style: Style.t_400_14w,),
                    ),

                  ],)),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("External links",style: Style.t_400_14g,),
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text('${(controller.analyticsList[0].data!.reaches!.external_links!)}%',style: Style.t_400_14w,),
                      ),

                  ],)),
                ],
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(

                  children: [
                Expanded(child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                        Text("Search",style: Style.t_400_14g,),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text('${controller.analyticsList[0].data!.reaches!.search!}%',style: Style.t_400_14w,),
                    ),

                      ],)),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Others",style: Style.t_400_14g,),
                        Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: Text('${(controller.analyticsList[0].data!.reaches!.others!)}%',style: Style.t_400_14w,),
                        ),

                      ],)),
                  ],
                ),
              ))
            ],
          )
      ),
    );
  }

  _firstChartSection()
  {
    return Column(children: [
      AspectRatio(
        aspectRatio: 1.70,
        child: Padding(
          padding: const EdgeInsets.only(
              right: 18.0, left: 12.0, top: 24, bottom: 12),
          child: LineChart(
              _firstSectionChart()
          ),
        ),
      ),
      RichText(text: TextSpan(
          children: [
            TextSpan(text: '${controller.analyticsList[0].data!.plays!} minutes', style: Style.t_400_14g),
            TextSpan(text:" Podcast Played in total this Week",style: Style.t_400_14w),
          ]))
    ],);
  }

  _secondChartSection()
  {
    return AspectRatio(
      aspectRatio: 1.70,
      child: Padding(
        padding: const EdgeInsets.only(
            right: 18.0, left: 12.0, top: 24, bottom: 12),
        child: LineChart(
            _secondSectionChart()
        ),
      ),
    );
  }

  _thirdChartSection()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
                right: 18.0, left: 12.0, top: 24, bottom: 21),
            child: LineChart(
                _thirdSectionChart()
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: Text("Total Earnings :",style: Style.t_500_14w,)),
                  Text('${controller.analyticsList[0].data!.audience!.earnings!.total!} \$',style: Style.t_500_14w,),
                ],),
              Padding(
                padding: const EdgeInsets.only(top: 12,bottom: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(child: Text("Subscription :",style: Style.t_400_13gA,)),
                    Text('${controller.analyticsList[0].data!.audience!.earnings!.subscription!} %',style: Style.t_400_13gA,),
                  ],),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: Text("Tracks :",style: Style.t_400_13gA,)),
                  Text('${controller.analyticsList[0].data!.audience!.earnings!.tracks!} %',style: Style.t_400_13gA,),
                ],),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24,left: 16,top: 26),
          child: ElevatedButton(
            onPressed: () => Get.toNamed(Routes.Wallet),
            child: const Text(
              "Go to Wallet",
              style: TextStyle(color: Style.accentGold),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: const BorderSide(color: Style.accentGold))),
                fixedSize: MaterialStateProperty.all(const Size(214, 54)),
                backgroundColor:
                MaterialStateProperty.all(Style.background),
                textStyle: MaterialStateProperty.all(const TextStyle(
                    color: Style.accentGold,
                    fontSize: 18,
                    fontWeight: FontWeight.w500))),
          ),
        ),
      ],
    );
  }

  LineChartData _firstSectionChart() {

    return LineChartData(
      lineTouchData: LineTouchData(
          touchTooltipData:
          LineTouchTooltipData(tooltipBgColor: Style.background),
          enabled: true),
      gridData: FlGridData(drawHorizontalLine: false, drawVerticalLine: false),
      backgroundColor: Style.background,
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 7,
      lineBarsData: [
        LineChartBarData(
          lineChartStepData: LineChartStepData(stepDirection: 1),
          spots: const [
            FlSpot(0, 0),
            FlSpot(2, 2),
            FlSpot(4, 5),
            FlSpot(6, 3),
            FlSpot(8, 4),
            FlSpot(10, 3),
            FlSpot(12, 4),
            FlSpot(14, 6),
          ],
          isCurved: true,
          colors: Style.chartGradiant,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            spotsLine: BarAreaSpotsLine(
                show: true,
                flLineStyle: FlLine(color: Style.accentGold, strokeWidth: 1)),
            show: true,
            colors: Style.chartGradiant.map((color) => color).toList(),
          ),
        ),
      ],
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xffA8A8A8),
              fontWeight: FontWeight.w300,
              fontSize: 13),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'Fri';
              case 4:
                return 'Sat';
              case 6:
                return 'Sun';
              case 8:
                return 'Mon';
              case 10:
                return 'Tue';
              case 12:
                return 'Wed';
              case 14:
                return 'Thu';
            }
            return '';
          },
          margin: 8,
        ),
      ),
    );
  }

  LineChartData _secondSectionChart() {

    return LineChartData(
      lineTouchData: LineTouchData(
          touchTooltipData:
          LineTouchTooltipData(tooltipBgColor: Style.background),
          enabled: true),
      gridData: FlGridData(drawHorizontalLine: false, drawVerticalLine: false),
      backgroundColor: Style.background,
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 7,
      lineBarsData: [
        LineChartBarData(
          lineChartStepData: LineChartStepData(stepDirection: 1),
          spots: const [
            FlSpot(0, 0),
            FlSpot(2, 2),
            FlSpot(4, 5),
            FlSpot(6, 3),
            FlSpot(8, 4),
            FlSpot(10, 3),
            FlSpot(12, 4),
            FlSpot(14, 6),
          ],
          isCurved: true,
          colors: Style.chartGradiant,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            spotsLine: BarAreaSpotsLine(
                show: true,
                flLineStyle: FlLine(color: Style.accentGold, strokeWidth: 1)),
            show: true,
            colors: Style.chartGradiant.map((color) => color).toList(),
          ),
        ),
      ],
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xffA8A8A8),
              fontWeight: FontWeight.w300,
              fontSize: 13),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'Fri';
              case 4:
                return 'Sat';
              case 6:
                return 'Sun';
              case 8:
                return 'Mon';
              case 10:
                return 'Tue';
              case 12:
                return 'Wed';
              case 14:
                return 'Thu';
            }
            return '';
          },
          margin: 8,
        ),
      ),
    );
  }

  LineChartData _thirdSectionChart() {

    return LineChartData(
      lineTouchData: LineTouchData(
          touchTooltipData:
          LineTouchTooltipData(tooltipBgColor: Style.background),
          enabled: true),
      gridData: FlGridData(drawHorizontalLine: false, drawVerticalLine: false),
      backgroundColor: Style.background,
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 7,
      lineBarsData: [
        LineChartBarData(
          lineChartStepData: LineChartStepData(stepDirection: 1),
          spots: const [
            FlSpot(0, 0),
            FlSpot(2, 2),
            FlSpot(4, 5),
            FlSpot(6, 3),
            FlSpot(8, 4),
            FlSpot(10, 3),
            FlSpot(12, 4),
            FlSpot(14, 6),
          ],
          isCurved: true,
          colors: Style.chartGradiant,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            spotsLine: BarAreaSpotsLine(
                show: true,
                flLineStyle: FlLine(color: Style.accentGold, strokeWidth: 1)),
            show: true,
            colors: Style.chartGradiant.map((color) => color).toList(),
          ),
        ),
      ],
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xffA8A8A8),
              fontWeight: FontWeight.w300,
              fontSize: 13),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'Fri';
              case 4:
                return 'Sat';
              case 6:
                return 'Sun';
              case 8:
                return 'Mon';
              case 10:
                return 'Tue';
              case 12:
                return 'Wed';
              case 14:
                return 'Thu';
            }
            return '';
          },
          margin: 8,
        ),
      ),
    );
  }

}


