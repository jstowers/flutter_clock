import 'package:flutter/material.dart';

class VerticalBarAnimation {
  final controller;
  final containerHeight;
  final timeInitial;
  final timeFinal;
  final beginAnimationPosition;
  final endAnimationPosition;

  VerticalBarAnimation({
    @required this.controller,
    @required this.containerHeight,
    @required this.timeInitial,
    @required this.timeFinal,
    @required this.beginAnimationPosition,
    @required this.endAnimationPosition,
  });

  Animation<double> get tween {
    return Tween<double>(
      begin: beginAnimationPosition,
      end: endAnimationPosition,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          timeInitial,
          timeFinal,
          curve: Curves.easeInOutSine,
        ),
      ),
    );
  }
}
