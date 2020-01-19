import 'package:flutter/material.dart';

class SecondsBar extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  final Color color;

  SecondsBar({
    @required this.barWidth,
    @required this.barHeight,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: barWidth,
      height: barHeight,
      color: color,
    );
  }
}
