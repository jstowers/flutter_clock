import 'package:flutter/material.dart';

import '../animation/widgets/time_digit_container.dart';
import 'quadrant_animator.dart';

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
        QuadrantAnimator(
          quadrant: quadrant,
          second: second,
          secondInitial: secondInitial,
          secondFinal: secondFinal,
        ),
        TimeDigitContainer(
          quadrant: quadrant,
          timeDigit: timeDigit,
        ),
      ],
    );
  }
}
