import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';


class Timer extends StatefulWidget {
  Timer({Key? key, required this.second, required this.endTimer}) : super(key: key) {
    controller = CountdownTimerController(
      endTime: second,
      onEnd: endTimer,
    );
  }

  int second;
  VoidCallback endTimer;
  late CountdownTimerController controller;

  @override
  TimerState createState() => TimerState();
}

class TimerState extends State<Timer> {
  void onEnd() {
    // ignore: avoid_print
    print('onEnd');
  }

  @override
  Widget build(final BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 15,
        ),
        // SvgPicture.asset(
        //   AppIcons.ASSETS_ICONS_TIME_TIMER_1_SVG,
        // ),
        const SizedBox(
          width: 11,
        ),
        SizedBox(
          width: 60,
          child: CountdownTimer(
            controller: widget.controller,
            widgetBuilder: (final _, final CurrentRemainingTime? time) {
              if (time == null) {
                return Text(
                  '0 : 00',
                  style: Get.textTheme.subtitle2,
                );
              }
              return Text(
                ' ${time.min ?? 0} : ${time.sec} ',
                style: Get.textTheme.subtitle2,
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
