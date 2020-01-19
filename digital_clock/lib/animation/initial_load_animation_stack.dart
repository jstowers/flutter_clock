import 'package:flutter/material.dart';

import '../animation/seconds_animator.dart';
import '../components/time_digit_container.dart';

class InitialLoadAnimationStack extends StatelessWidget {
  final int quadrant;
  final num second;
  final bool isInitialLoad;
  final int firstSecond;
  final int lastSecondInitialLoad;
  final String timeDigit;

  InitialLoadAnimationStack({
    @required this.quadrant,
    @required this.second,
    @required this.isInitialLoad,
    @required this.firstSecond,
    @required this.lastSecondInitialLoad,
    @required this.timeDigit,
  });

  @override
  Widget build(BuildContext context) {
    bool isInitialQuadrant1 = lastSecondInitialLoad == 15 && quadrant == 1;
    bool isInitialQuadrant2 = lastSecondInitialLoad == 30 && quadrant == 2;
    bool isInitialQuadrant3 = lastSecondInitialLoad == 45 && quadrant == 3;
    bool isInitialQuadrant4 = lastSecondInitialLoad == 0 && quadrant == 4;

    return Stack(
      children: <Widget>[
        (isInitialQuadrant1 ||
                isInitialQuadrant2 ||
                isInitialQuadrant3 ||
                isInitialQuadrant4)
            ? SecondsAnimator.initialLoad(
                quadrant,
                second,
                isInitialLoad,
                firstSecond,
                lastSecondInitialLoad,
              )
            : SizedBox.shrink(),
        TimeDigitContainer(
          quadrant: quadrant,
          timeDigit: timeDigit,
        ),
      ],
    );
  }
}
