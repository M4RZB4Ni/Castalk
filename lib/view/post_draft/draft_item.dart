import 'dart:ui';

import 'package:castalk/cicon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../style.dart';

class DraftItem extends StatefulWidget {
  const DraftItem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DraftItemState();
  }
}

class DraftItemState extends State<DraftItem> {
  String svgPath = "assets/icons/";
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Style.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(w, h),
            _episodeNameData(),
            _aboutSection(),
            _titleSubTitle(
                title: "Source:", subTitle: "Podcast Name - Episode Name"),
            _titleSubTitle(
                title: "Tags:", subTitle: "Mathematics, sience, ataan"),
            _titleSubTitle(title: "Type:", subTitle: "Free"),
            _titleSubTitle(title: "Creation Date:", subTitle: "Mon 22/03/2021"),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 9, bottom: 60, top: 88),
                  child: _bigButton(
                      iconName: Cicon.upload,
                      text: "Publish",
                      textColor: Style.t_500_18_5c,
                      backColor: Style.accentGold),
                )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            right: 25, left: 9, bottom: 60, top: 88),
                        child: ElevatedButton(
                          onPressed: () {
                            _showClendarBox(w,h);
                          },
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Cicon.calendar,
                                    color: Style.gray5C),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Schedule",
                                    style: Style.t_500_18_5c,
                                  ),
                                )
                              ]),
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(148, 54)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.only(
                                      left: 6, top: 6, bottom: 6)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                      side: BorderSide(color: Colors.white))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showClendarBox(w,h) {
    debugPrint("ssss");
    return showDialog(
        useSafeArea: true,
        context: context,
        builder: (_) => AlertDialog(
          insetPadding: const EdgeInsets.symmetric(vertical: 210),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
          titlePadding: const EdgeInsets.only(top: 7, left: 7),
          backgroundColor: Style.background,
          content: SizedBox(
              width: w,
              height: h/2,
              child: SfDateRangePicker(
                monthCellStyle: DateRangePickerMonthCellStyle(leadingDatesTextStyle: Style.t_400_14w,textStyle: Style.t_400_14w,weekendTextStyle: Style.t_400_14w,todayTextStyle: Style.t_400_14g,todayCellDecoration: BoxDecoration(color: Style.gold29,borderRadius: BorderRadius.circular(8))),
                yearCellStyle: DateRangePickerYearCellStyle(textStyle: Style.t_400_14w),
                selectionTextStyle: Style.t_400_14w,
                selectionShape: DateRangePickerSelectionShape.rectangle,

                showNavigationArrow: true,
                allowViewNavigation: true,
                navigationMode: DateRangePickerNavigationMode.snap,
                selectionColor: Style.accentGold
                rangeSelectionColor: Style.accentGold,

                startRangeSelectionColor: Style.accentGold,
                headerStyle: DateRangePickerHeaderStyle(textStyle: Style.t_700_20g),
                view: DateRangePickerView.month,
                monthViewSettings: const DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
                selectionMode: DateRangePickerSelectionMode.single,


              )),
        ));
  }

  ElevatedButton _bigButton(
      {required iconName,
      required text,
      required var textColor,
      required backColor,
      var iconColor}) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconName, color: iconColor),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: textColor,
              ),
            )
          ]),
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(148, 54)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(left: 6, top: 6, bottom: 6)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(color: backColor))),
          backgroundColor: MaterialStateProperty.all(backColor)),
    );
  }

  _episodeNameData() {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 14, right: 24),
      child: Row(
        children: [
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(20),
            child: SvgPicture.asset(
              svgPath + "play.svg",
              color: Style.accentGold,
            ),
            decoration: BoxDecoration(
                color: Style.headerBackBtn,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Episode Name which is...".length > 20
                        ? "Episode Name which is...".substring(0, 18) + "..."
                        : "Episode Name which is...",
                    style: Style.t_500_22w),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    "Episode Name which is...".length > 20
                        ? "Episode Name which is...".substring(0, 18) + "..."
                        : "Episode Name which is...",
                    style: Style.t_500_18g,
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  _aboutSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              "About:",
              style: Style.t_500_14w,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9, right: 26, left: 26),
            child: ReadMoreText(
              'In this Episode we will talk about lorem ipsum. you may sd heard of it before but let’s take a new look at it you may as In this Episode we will talk about lorem ipsum. you maya a heard of it before but let’s take a new look at it In thi zcefg Episode we will talk about lorem ipsum. you may you may heard of it before but let’s take a new look at it...',
              trimLines: 2,
              style: Style.t_400_14_9d,
              colorClickableText: Style.accentGold,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Show less',
              moreStyle: Style.t_400_12g.copyWith(fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
    );
  }

  _titleSubTitle({required String title, required String subTitle}) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              title,
              style: Style.t_500_14w,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, right: 26, left: 26),
            child: Text(
              subTitle,
              style: Style.t_400_14_9d,
            ),
          )
        ],
      ),
    );
  }

  _header(w, h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 24),
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
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 24, right: 10),
                    child: _44Buttons(
                        buttonName: Cicon.delete,
                        color: Colors.white,
                        backColor: Style.redAccent)),
                Padding(
                    padding: const EdgeInsets.only(top: 24, right: 24),
                    child: _44Buttons(
                        buttonName: Cicon.modify, backColor: Style.gray88)),
              ],
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Container(
              width: 274,
              height: 274,
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage("https://picsum.photos/414/414"),
                      fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
        ),
      ],
    );
  }

  _44Buttons({required String buttonName, var color, required var backColor}) {
    return Container(
        padding: const EdgeInsets.all(12),
        width: 44,
        height: 44,
        child: SvgPicture.asset(
          buttonName,
          width: 17,
          height: 17,
          color: color,
        ),
        decoration: BoxDecoration(
            color: backColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)));
  }
}
