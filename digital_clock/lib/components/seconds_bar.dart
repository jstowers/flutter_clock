import 'package:flutter/material.dart';

class SecondsBar extends StatelessWidget {
  final barWidth;
  final barHeight;
  final color;

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
