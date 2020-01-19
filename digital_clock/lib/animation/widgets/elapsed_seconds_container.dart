import 'package:flutter/material.dart';

class ElapsedSecondsContainer extends StatelessWidget {
  final width;
  final height;
  final color;

  ElapsedSecondsContainer({
    @required this.width,
    @required this.height,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
