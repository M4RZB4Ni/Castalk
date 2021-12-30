import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class MyCastsAnalytics extends StatefulWidget{
  const MyCastsAnalytics({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyCastsAnalyticsState();
  }


}

class MyCastsAnalyticsState extends State<MyCastsAnalytics>{

  List<String> cCodes=["This Week","Last Week","Next Week"];


  //late TextTheme _textTheme;
  TextEditingController numberController = TextEditingController();
  late String _charDropValue;
  late String _reachesDropValue;
  late String _earningsDropValue;


  @override
  void initState() {
    _charDropValue= cCodes.first;
    _reachesDropValue= cCodes.first;
    _earningsDropValue= cCodes.first;

  }

  @override
  Widget build(BuildContext context) {

   // _textTheme = Theme.of(context).textTheme;

    double w = MediaQuery.of(context).size.width;
     double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,

      body: SingleChildScrollView(child:
          Column(children: [
            _tripleHeader(w),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(children: [
                Expanded(flex: 2,child:Text("Plays :", style: Style.t_500_16w)),
                Expanded(flex: 3,child: Container(height: 44,decoration:  Style.dropDownDecoration,width: w,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Theme.of(context).copyWith(
                          canvasColor: Style.background),
                          child: DropdownButton<String>(
                              icon: const Padding(
                                padding: EdgeInsets.only(right: 15,bottom: 0),
                                child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 28,),
                              ),
                              isDense: false,
                              value: _charDropValue,
                              style: Theme.of(context).textTheme.bodyText2,
                              items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Style.t_400_12w),value: e,)).toList(),
                              onChanged: (value) {
                                setState(() {
                                  // selectedActivity = value;
                                  _charDropValue=value!;
                                  debugPrint('album choose-> $value');


                                });
                              })),
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
                Expanded(flex: 3,child: Container(height: 44,decoration:  Style.dropDownDecoration,width: w,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Theme.of(context).copyWith(
                          canvasColor: Style.background),
                          child: DropdownButton<String>(
                              icon: const Padding(
                                padding: EdgeInsets.only(right: 15,bottom: 0),
                                child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 28,),
                              ),
                              isDense: false,
                              value: _reachesDropValue,
                              style: Theme.of(context).textTheme.bodyText2,
                              items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Style.t_400_12w),value: e,)).toList(),
                              onChanged: (value) {
                                setState(() {
                                  // selectedActivity = value;
                                  _reachesDropValue=value!;
                                  debugPrint('album choose-> $value');


                                });
                              })),
                    )
                ))
                )
              ],),
            ),
            _reachesHeader(w),
            _secondChartSection(),
            const Padding(
              padding: EdgeInsets.only(top: 24,right: 12,left: 12),
              child: Divider(height: 1,color: Style.divider,thickness: 1,),
            ),
            _mostPlayedSection(w, h),
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
                      SizedBox(),

                      Column(
                        children: [
                          Text("32% Female",style: Style.t_500_12w,),
                          Container(
                              width: w/2,
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
                          Text("68% Male",style: Style.t_500_12g,),

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
                Expanded(flex: 3,child: Container(height: 44,decoration:  Style.dropDownDecoration,width: w,child:
                DropdownButtonHideUnderline(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 15),
                      child: Theme(data: Theme.of(context).copyWith(
                          canvasColor: Style.background),
                          child: DropdownButton<String>(
                              icon: const Padding(
                                padding: EdgeInsets.only(right: 15,bottom: 0),
                                child: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffD1D1D1),size: 28,),
                              ),
                              isDense: false,
                              value: _earningsDropValue,
                              style: Theme.of(context).textTheme.bodyText2,
                              items: cCodes.map((e) => DropdownMenuItem(child: Text(e,style: Style.t_400_12w),value: e,)).toList(),
                              onChanged: (value) {
                                setState(() {
                                  // selectedActivity = value;
                                  _earningsDropValue=value!;
                                  debugPrint('album choose-> $value');


                                });
                              })),
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
            _bestSellingSection(w, h)

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
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              _activeSubscriptionsItem(w, h),
              _activeSubscriptionsItem(w, h),
              _activeSubscriptionsItem(w, h),

            ],
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
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              _activeSubscriptionsItem(w, h),
              _activeSubscriptionsItem(w, h),
              _activeSubscriptionsItem(w, h),

            ],
          ),
        ),
      ],
    );
  }


  _activeSubscriptionsItem(w,h)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        width: w,
        height: 60,
        child: Row(children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Episode Name which is long...".length > 26 ? "Episode Name which is long...".substring(0,26)+"..." : "Episode Name which is long...",style: Style.t_400_18g,),
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
                          Text("Podcast name",style:Style.t_400_14wh,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 34),
                        child: Text("12K Plays",style: Style.t_400_14wh),
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
          )


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
                  Text("12K",style: Style.t_500_24w),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Listens",style: Style.t_500_14_G9D),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("12K",style: Style.t_500_24w),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Followers",style: Style.t_500_14_G9D),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("102",style: Style.t_500_24w),
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
                      child: Text("40%",style: Style.t_400_14w,),
                    ),

                  ],)),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Explore",style: Style.t_400_14g,),
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text("40%",style: Style.t_400_14w,),
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
                      child: Text("40%",style: Style.t_400_14w,),
                    ),

                      ],)),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Search",style: Style.t_400_14g,),
                        Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: Text("40%",style: Style.t_400_14w,),
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
            TextSpan(text:"511420 minutes",style: Style.t_400_14g),
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
                  Text("1450 \$",style: Style.t_500_14w,),
                ],),
              Padding(
                padding: const EdgeInsets.only(top: 12,bottom: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(child: Text("Total Earnings :",style: Style.t_400_13gA,)),
                    Text("85 %",style: Style.t_400_13gA,),
                  ],),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: Text("Tracks :",style: Style.t_400_13gA,)),
                  Text("15 %",style: Style.t_400_13gA,),
                ],),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24,left: 16,top: 26),
          child: ElevatedButton(
            onPressed: () => print(""),
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
                fixedSize: MaterialStateProperty.all(Size(214, 54)),
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


  LineChartData _secondSectionChart() {

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
  LineChartData _thirdSectionChart() {

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


