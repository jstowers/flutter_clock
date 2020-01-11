import 'package:flutter/material.dart';

import 'package:digital_clock/animation/vertical_bar_animation.dart';

class SecondsDetailEnterAnimation {
  final AnimationController controller;
  final double containerWidth;
  final double containerHeight;
  final int barIndex;

  SecondsDetailEnterAnimation({
    @required this.controller,
    @required this.containerWidth,
    @required this.containerHeight,
    this.barIndex = 0,
  })  : second1 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 0.0,
          timeFinal: 1 / 15,
        ).tween,
        second2 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 1 / 15,
          timeFinal: 2 / 15,
        ).tween,
        second3 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 2 / 15,
          timeFinal: 3 / 15,
        ).tween,
        second4 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 3 / 15,
          timeFinal: 4 / 15,
        ).tween,
        second5 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 4 / 15,
          timeFinal: 5 / 15,
        ).tween,
        second6 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 5 / 15,
          timeFinal: 6 / 15,
        ).tween,
        second7 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 6 / 15,
          timeFinal: 7 / 15,
        ).tween,
        second8 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 7 / 15,
          timeFinal: 8 / 15,
        ).tween,
        second9 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 8 / 15,
          timeFinal: 9 / 15,
        ).tween,
        second10 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 9 / 15,
          timeFinal: 10 / 15,
        ).tween,
        second11 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 10 / 15,
          timeFinal: 11 / 15,
        ).tween,
        second12 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 11 / 15,
          timeFinal: 12 / 15,
        ).tween,
        second13 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 12 / 15,
          timeFinal: 13 / 15,
        ).tween,
        second14 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 13 / 15,
          timeFinal: 14 / 15,
        ).tween,
        second15 = VerticalBarAnimation(
          controller: controller,
          containerHeight: containerHeight,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 14 / 15,
          timeFinal: 15 / 15,
        ).tween,
        colorChange = ColorTween(
          begin: Colors.blue,
          end: Colors.purple,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.5,
            1.0,
          ),
        ));

  final Animation<num> second1;
  final Animation<num> second2;
  final Animation<num> second3;
  final Animation<num> second4;
  final Animation<num> second5;
  final Animation<num> second6;
  final Animation<num> second7;
  final Animation<num> second8;
  final Animation<num> second9;
  final Animation<num> second10;
  final Animation<num> second11;
  final Animation<num> second12;
  final Animation<num> second13;
  final Animation<num> second14;
  final Animation<num> second15;
  final Animation<Color> colorChange;
}
