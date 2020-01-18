import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../animation/seconds_animator_new.dart';
import '../components/time_digit_container.dart';
import '../providers/time_state.dart';

class TimeAnimationStack extends StatelessWidget {
  final int quadrantId;

  TimeAnimationStack({@required this.quadrantId});

  @override
  Widget build(BuildContext context) {
    final timeState = Provider.of<TimeState>(context);

    String timeDigit;

    switch (quadrantId) {
      case (1):
        timeDigit = timeState.hourDigitTwo;
        break;
      case (2):
        timeDigit = timeState.minuteDigitTwo;
        break;
      case (3):
        timeDigit = timeState.minuteDigitOne;
        break;
      case (4):
        timeDigit = timeState.hourDigitOne;
        break;
      default:
        timeDigit = 'N/A';
    }

    return Stack(
      key: Key('time_animation_stack_quadrant_$quadrantId'),
      children: <Widget>[
        SecondsAnimator(
          second: timeState.second,
          isInitialLoad: timeState.isInitialLoad,
          quadrant: quadrantId,
        ),
        TimeDigitContainer(
          quadrant: quadrantId,
          timeDigit: timeDigit,
        ),
      ],
    );
  }
}
