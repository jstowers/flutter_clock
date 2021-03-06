import 'package:flutter/material.dart';

import 'two_bars.dart';
import 'seconds_bar.dart';

class TwoBarsAnimation extends StatelessWidget {
  final List<TwoBars> animationList;
  final double containerWidth;
  final double containerHeight;

  TwoBarsAnimation({
    @required this.animationList,
    @required this.containerWidth,
    @required this.containerHeight,
  });

  Widget _buildAnimationList() {
    final barWidth = 1 / 15 * containerWidth;
    final topColor = Colors.cyan;
    final bottomColor = Colors.red;

    final List<Widget> list = [];

    animationList.forEach((second) {
      list.add(Positioned(
        child: SecondsBar(
          barWidth: barWidth,
          barHeight: second.topHeightRatio * containerHeight,
          color: topColor,
        ),
        top: second.animationTop.value,
        left: second.leftPositionRatio * containerWidth,
      ));
      list.add(
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: (1 - second.topHeightRatio) * containerHeight,
            color: bottomColor,
          ),
          top: second.animationBottom.value,
          left: second.leftPositionRatio * containerWidth,
        ),
      );
    });
    return Stack(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return _buildAnimationList();
  }
}
