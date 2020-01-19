import 'package:digital_clock/animation/seconds_animator.dart';
import 'package:digital_clock/components/time_digit_container.dart';
import 'package:flutter/material.dart';

class FifteenSecondsAnimationStack extends StatelessWidget {
  final int quadrant;
  final int second;
  final String timeDigit;
  final int secondInitial;
  final int secondFinal;

  FifteenSecondsAnimationStack({
    @required this.quadrant,
    @required this.second,
    @required this.timeDigit,
    @required this.secondInitial,
    @required this.secondFinal,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: Key('fifteen_seconds_animation_stack_quadrant_$quadrant'),
      children: <Widget>[
        (second >= secondInitial && second < 59)
            ? SecondsAnimator(
                second: second,
                quadrant: quadrant,
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
