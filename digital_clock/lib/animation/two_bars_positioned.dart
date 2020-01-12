/*
import 'package:digital_clock/components/seconds_bar.dart';
import 'package:flutter/material.dart';

class TwoBarsPositioned extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  final Color topColor;
  final Color bottomColor;
  final double topAnimationValue;
  final double bottomAnimationValue;
  final double left;

  TwoBarsPositioned({
    @required this.barWidth,
    @required this.barHeight,
    @required this.topColor,
    @required this.bottomColor,
    @required this.topAnimationValue,
    @required this.bottomAnimationValue,
    @required this.left,
  });

  // TODO: consider a CustomMultiChildLayout with a delegate
  // Can't pass a Column with two Positioned animated widgets back to the stack

  Widget build(BuildContext buildContext) {
    return CustomMultiChildLayout(
      children: <Widget>[
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: topColor,
          ),
          top: topAnimationValue,
          left: left,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: bottomColor,
          ),
          top: bottomAnimationValue,
          left: left,
        ),
      ],
    );
  }
}
*/
