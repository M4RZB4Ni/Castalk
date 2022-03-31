import 'package:castalk/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PromotionAnalytics extends GetView<PromotionAnalytics> {

  List<String> cCodes=["This Week","Last Week","Next Week"];
  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();
  late String _charDropValue;
  List<Color> gradientColors = [
    const Color(0xffffb800).withOpacity(0.1),
    const Color(0xffffb800).withOpacity(0.4),
  ];

  @override
  void initState() {
    _charDropValue= cCodes.first;
  }
  bool showAvg = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: PreferredSize(preferredSize: Size(Get.width, 100), child: header(Get.width)),
        backgroundColor: Style.background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 13,left: 27,top: 45),
            child: Row(children: [
              Expanded(flex: 2,child:Text("Using Static :", style: Style.t_500_16w)),
              Expanded(flex: 3,child: Container(height: 44,decoration:  Style.dropDownDecoration,width: Get.width,child:
              DropdownButtonHideUnderline(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                    child: Theme(data: Get.theme.copyWith(
                        canvasColor: Style.background),
                        child: DropdownButton<String>(
                            icon: const Padding(
                              padding: EdgeInsets.only(right: 15,bottom: 0),
                              child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 28,),
                            ),
                            isDense: false,
                            value: _charDropValue,
                            style: Get.textTheme.bodyText2,
                            items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Style.t_400_12w),value: e,)).toList(),
                            onChanged: (value) {
                              // setState(() {
                              //   // selectedActivity = value;
                              //   _charDropValue=value!;
                              //   debugPrint('album choose-> $value');
                              // });
                            })),
                  )
              ))
              )
            ],),
          ),

          Column(
            children: [
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
                        mainData()
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: RichText(text: TextSpan(

                    children: [
                      TextSpan(text:"This code used over",style: Get.textTheme.subtitle1!.copyWith(color: Colors.white)),
                      TextSpan(text:" 127k times",style: Get.textTheme.subtitle1!.copyWith(color: Style.accentGold))
                    ])),
              )

            ],
          ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: const EdgeInsets.only(top: 46,bottom: 20,left: 27),
                child: Text("Used Cases :", style: Style.t_500_16w),
              ),
              _searchBar(Get.width)
            ],),

          Expanded(child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(children: [
               _searchItems(Get.width,Get.height),
            ],),
          )),
        ],
      )
    );
  }

  _searchItems(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Style.gray2F,
          borderRadius: BorderRadius.circular(16),
        ),
        width: w,
        height: 80,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 9,bottom: 13),
            child: Container(
              height: 57,
              width: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/66/66'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 6,bottom: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Amir Mehranfar".length > 30 ? "Amir Mehranfar".substring(0,30)+"..." : "Amir Mehranfar",style: Style.t_400_14g),
                Text("Used at 12 / 02 / 2021 22 : 12 : 35",style: Style.t_400_12w,),
                Text("Product Name",style: Style.t_400_14g),


              ],
            ),
          )),
        ],),),
    );
  }



  _searchBar(w)
  {
    return Padding(
      padding: const EdgeInsets.only(right: 17,left: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 44,
              decoration: BoxDecoration(
                  borderRadius:
                  const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                      width: 1, color: const Color(0xff484848))),
              width: w / 2,
              child: TextField(
                  controller: numberController,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: false,
                      contentPadding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 19),
                      hintText: "Type to Search...",
                      hintStyle:
                      TextStyle(color: Get.theme.hintColor),
                      fillColor: Colors.white))),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(
              svgPath + "search.svg",
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              svgPath + "filter.svg",
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: 44,
            height: 44,
            child: SvgPicture.asset(
              svgPath + "sort.svg",
              width: 14,
              height: 14,
            ),
            decoration: BoxDecoration(
                color: Style.glassBlack,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
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
                child: Text("Promotion Analytics", style: Get.textTheme.headline1),
              ),
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
          colors: gradientColors,
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
            colors: gradientColors.map((color) => color).toList(),
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

