import 'package:flutter/material.dart';

import '../animation/seconds_animator.dart';

class QuadrantAnimator extends StatelessWidget {
  final int quadrant;
  final int second;
  final int secondInitial;
  final int secondFinal;

  QuadrantAnimator({
    @required this.quadrant,
    @required this.second,
    @required this.secondInitial,
    @required this.secondFinal,
  });

  @override
  Widget build(BuildContext context) {
    final isSecondInQuadrant = second >= secondInitial;
    final isQuadrant1 = quadrant == 1 && isSecondInQuadrant;
    final isQuadrant2 = quadrant == 2 && isSecondInQuadrant;
    final isQuadrant3 = quadrant == 3 && isSecondInQuadrant;
    final isQuadrant4 = quadrant == 4 && isSecondInQuadrant;

    if (second == 0) {
      return SizedBox.shrink();
    } else if (isQuadrant1 || isQuadrant2 || isQuadrant3 || isQuadrant4) {
      return SecondsAnimator(
        second: second,
        quadrant: quadrant,
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
