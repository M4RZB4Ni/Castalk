import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class enterCodeTimer extends StatefulWidget {
  enterCodeTimer({required this.second, required this.endTimer}) {
    countdownTimerController = CountdownTimerController(
      endTime: second,
      onEnd: endTimer,
    );
  }

  int second;
  VoidCallback endTimer;
  late CountdownTimerController countdownTimerController;

  @override
  TimerState createState() => TimerState();
}

class TimerState extends State<enterCodeTimer> {

  void onEnd() {
    debugPrint('onEnd');
  }

  @override
  Widget build(final BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 15,
        ),
        const SizedBox(
          width: 11,
        ),
        SizedBox(
          width: 60,
          child: CountdownTimer(
            controller: widget.countdownTimerController,
            widgetBuilder: (final _, final CurrentRemainingTime? time) {
              if (time == null) {
                return Text(
                  '0 : 00',
                  style: Get.textTheme.headline1,
                );
              }
              return Text(
                ' ${time.min ?? 0} : ${time.sec} ',
                style: Get.textTheme.headline1,
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    widget.countdownTimerController.dispose();
    super.dispose();
  }
}