import 'package:castalk/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controllers/listening_statistics_controller.dart';

class ListeningStatistics extends GetView<ListeningStatisticsController>{

  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(Get.width, 100), child: header(Get.width)),
      backgroundColor: Style.background,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 35,bottom: 30,right: 25,left: 25),
          child: Container(
              padding: const EdgeInsets.all(38),
              height: 130,width: Get.width,decoration:  Style.inputBoxDecoration.copyWith(borderRadius: const BorderRadius.all(Radius.circular(24))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${controller.listeningAnalyticsList[0].data!.total_listening_time!}min', style: Style.t_500_18w),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Total listening time",style: Style.t_500_14_G9D),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${controller.listeningAnalyticsList[0].data!.episodes!}',style: Style.t_500_24w),
                    Text("Episodes",style: Style.t_500_14_G9D),
                  ],
                )
              ],)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 14,left: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your listening routin :",style: Style.t_500_16w,),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: '${controller.listeningAnalyticsList[0].data!.your_listening_routine!}', style: Style.t_400_12_green),
                        TextSpan(text:" from last week",style: Style.t_400_12_9D),
                      ]))
                ],
              ),
              AspectRatio(
                aspectRatio: 1.70,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                      color: Style.background),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 18.0, left: 12.0, top: 24, bottom: 12),
                    child: LineChart(
                        mainData(),
                    ),
                  ),
                ),
              ),

              RichText(text: TextSpan(
                  children: [
                    TextSpan(text:"511420 minutes",style: Style.t_400_14g),
                    TextSpan(text:" Podcast Played in total this Week",style: Style.t_400_14w),
                  ]))
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 24),
          child: Divider(color: Style.divider,thickness: 1,),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25,left: 25,top: 33),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Text("Field of Intrest :",style: Style.t_500_16w,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text('${controller.listeningAnalyticsList[0].data!.field_of_interest!.comedy!}% Comedy', style: Style.t_500_14g,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text('${controller.listeningAnalyticsList[0].data!.field_of_interest!.psychology!}% Pychology',style: Style.t_500_14w,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text('${controller.listeningAnalyticsList[0].data!.field_of_interest!.sport!}% Sport',style: Style.t_500_14r,),
                  ),

                ],
              ),

              Container(
                width: Get.width/2,
                height: 144,
                color: Style.background,
                child: Stack(children: [
                  Center(child: SvgPicture.asset(svgPath+"chartcenter.svg")),
                  PieChart(
                    PieChartData(
                        sectionsSpace: 5,
                        centerSpaceRadius: 50,
                        sections: showingSections()),
                  ),
                ],)
              )



            ],
          ),
        ),

      ],),
    );
  }




  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {

      switch (i) {
        case 0:
          return PieChartSectionData(
            showTitle: false,
            color: Style.accentGold,
            value: 25,
            radius: 16,
          );
        case 1:
          return PieChartSectionData(
            showTitle: false,
            color: Colors.white,
            value: 30,
            radius: 16,
          );
        case 2:
          return PieChartSectionData(
            showTitle: false,
            color: Style.redAccent,
            value: 25,
            radius: 16,
          );
        default:
          throw Error();
      }
    });
  }


  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Container(
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
          ),
          Text("Listening Statistics", style: Get.textTheme.headline1),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }


  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
          touchTooltipData:
          LineTouchTooltipData(tooltipBgColor: Style.background),
          enabled: true),
      gridData: FlGridData(drawHorizontalLine: false, drawVerticalLine: false),
      backgroundColor: Style.background,
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          lineChartStepData: LineChartStepData(stepDirection: 1),
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
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
              case 1:
                return 'Fri';
              case 3:
                return 'Sat';
              case 5:
                return 'Sun';
              case 7:
                return 'Mon';
              case 9:
                return 'Tue';
              case 11:
                return 'Wed';
              case 12:
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