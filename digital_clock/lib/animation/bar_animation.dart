import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BarAnimation {
  final controller;
  final timeInitial;
  final timeFinal;
  final beginAnimationPosition;
  final endAnimationPosition;

  BarAnimation({
    @required this.controller,
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
