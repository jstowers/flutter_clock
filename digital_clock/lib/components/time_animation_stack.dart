import 'package:digital_clock/animation/fifteen_seconds_animation_stack.dart';
import 'package:digital_clock/animation/initial_load_animation_stack.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../animation/seconds_animator.dart';
import '../components/time_digit_container.dart';
import '../providers/time_state.dart';

class TimeAnimationStack extends StatelessWidget {
  final int quadrantId;

  TimeAnimationStack({@required this.quadrantId});

  @override
  Widget build(BuildContext context) {
    final timeState = Provider.of<TimeState>(context);
    final isInitialLoad = timeState.isInitialLoad;

    String timeDigit;
    int secondInitial;
    int secondFinal;

    switch (quadrantId) {
      case (1):
        timeDigit = timeState.hourDigitTwo;
        secondInitial = 0;
        secondFinal = 15;
        break;
      case (2):
        timeDigit = timeState.minuteDigitTwo;
        secondInitial = 16;
        secondFinal = 30;
        break;
      case (3):
        timeDigit = timeState.minuteDigitOne;
        secondInitial = 31;
        secondFinal = 45;
        break;
      case (4):
        timeDigit = timeState.hourDigitOne;
        secondInitial = 46;
        secondFinal = 60;
        break;
      default:
        timeDigit = 'N/A';
    }

    if (isInitialLoad) {
      return InitialLoadAnimationStack(
        quadrant: quadrantId,
        second: timeState.second,
        isInitialLoad: isInitialLoad,
        firstSecond: timeState.firstSecond,
        lastSecondInitialLoad: timeState.lastSecondInitialLoad,
        timeDigit: timeDigit,
      );
    } else {
      return FifteenSecondsAnimationStack(
        quadrant: quadrantId,
        second: timeState.second,
        timeDigit: timeDigit,
        secondInitial: secondInitial,
        secondFinal: secondFinal,
      );
    }
  }
}
