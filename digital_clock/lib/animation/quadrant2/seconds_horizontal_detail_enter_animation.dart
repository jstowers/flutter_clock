import 'package:flutter/material.dart';

import '../widgets/bar_animation.dart';

class SecondsHorizontalDetailEnterAnimation {
  final AnimationController controller;
  final containerWidth;

  SecondsHorizontalDetailEnterAnimation({
    @required this.controller,
    @required this.containerWidth,
  })  : second1 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 0.0,
          timeFinal: 1 / 15,
        ).tween,
        second2 = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerWidth,
          endAnimationPosition: containerWidth,
          timeInitial: 1 / 15,
          timeFinal: 2 / 15,
        ).tween,
        second3 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 2 / 15,
          timeFinal: 3 / 15,
        ).tween,
        second4 = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerWidth,
          endAnimationPosition: containerWidth,
          timeInitial: 3 / 15,
          timeFinal: 4 / 15,
        ).tween,
        second5 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 4 / 15,
          timeFinal: 5 / 15,
        ).tween,
        second6 = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerWidth,
          endAnimationPosition: containerWidth,
          timeInitial: 5 / 15,
          timeFinal: 6 / 15,
        ).tween,
        second7 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 6 / 15,
          timeFinal: 7 / 15,
        ).tween,
        second8 = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerWidth,
          endAnimationPosition: containerWidth,
          timeInitial: 7 / 15,
          timeFinal: 8 / 15,
        ).tween,
        second9 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 8 / 15,
          timeFinal: 9 / 15,
        ).tween,
        second10 = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerWidth,
          endAnimationPosition: containerWidth,
          timeInitial: 9 / 15,
          timeFinal: 10 / 15,
        ).tween,
        second11 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 10 / 15,
          timeFinal: 11 / 15,
        ).tween,
        second12 = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerWidth,
          endAnimationPosition: containerWidth,
          timeInitial: 11 / 15,
          timeFinal: 12 / 15,
        ).tween,
        second13 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 12 / 15,
          timeFinal: 13 / 15,
        ).tween,
        second14 = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerWidth,
          endAnimationPosition: containerWidth,
          timeInitial: 13 / 15,
          timeFinal: 14 / 15,
        ).tween,
        second15 = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerWidth,
          endAnimationPosition: -containerWidth,
          timeInitial: 14 / 15,
          timeFinal: 15 / 15,
        ).tween,
        colorChange = ColorTween(
          begin: Colors.purple,
          end: Colors.red,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.5,
              1.0,
            ),
          ),
        );

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
