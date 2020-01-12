import 'package:flutter/material.dart';

// TODO: pass initial and final animation colors as properties
class InitialLoadEnterAnimation {
  final AnimationController controller;
  final containerWidth;
  final containerHeight;
  final barIndex;

  InitialLoadEnterAnimation({
    @required this.controller,
    @required this.containerWidth,
    @required this.containerHeight,
    @required this.barIndex,
  })  : staticSecondsContainer = Tween<double>(
          begin: (barIndex / 15) * containerWidth,
          end: containerWidth,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              1.0,
              curve: Curves.linear,
            ),
          ),
        ),
        colorChange = ColorTween(
          begin: Colors.green,
          end: Colors.orange,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.0,
            1.0,
          ),
        ));

  final Animation<num> staticSecondsContainer;
  final Animation<Color> colorChange;
}
