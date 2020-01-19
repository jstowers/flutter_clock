import 'package:flutter/material.dart';

class TwoBars {
  final Animation<num> animationTop;
  final Animation<num> animationBottom;
  final double topHeightRatio;
  final double leftPositionRatio;

  TwoBars({
    @required this.animationTop,
    @required this.animationBottom,
    @required this.topHeightRatio,
    @required this.leftPositionRatio,
  });
}
