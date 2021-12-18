import 'package:castalk/cicon.dart';
import 'package:castalk/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class WalletAnalytics extends StatefulWidget{
  const WalletAnalytics({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WalletAnalyticsState();
  }


}

class WalletAnalyticsState extends State<WalletAnalytics>{

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


    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Style.background,
      appBar: PreferredSize(preferredSize: Size(w, 100), child: header(w)),

      body: SingleChildScrollView(child:
      Column(children: [

        Padding(
          padding: const EdgeInsets.only(right: 28,left: 28,top: 34),
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
          padding: EdgeInsets.only(top: 24,right: 12,left: 12,bottom: 24),
          child: Divider(height: 1,color: Style.divider,thickness: 1,),
        ),
        _bestSellingSection(w, h),
        const Padding(
          padding: EdgeInsets.only(top: 34,right: 12,left: 12,bottom: 32),
          child: Divider(height: 1,color: Style.divider,thickness: 1,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(children: [
            Expanded(flex: 2,child:Text("Your buys :", style: Style.t_500_16w)),
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
        const SizedBox(height: 60,)
      ],)
        ,),

    );
  }

  header(w) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
      child: Row(
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
          Text("Analytics", style: Style.t_500_24w),
          Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              Cicon.question_mark,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12)),
          ),

        ],
      ),
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



  _bestSellingSection(w,h)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0,left: 27,bottom: 18),
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

      ],
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


