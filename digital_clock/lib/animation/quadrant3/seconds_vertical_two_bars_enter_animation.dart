import 'package:flutter/material.dart';

import '../widgets/bar_animation.dart';

class SecondsVerticalTwoBarsEnterAnimation {
  final AnimationController controller;
  final containerHeight;

  SecondsVerticalTwoBarsEnterAnimation({
    @required this.controller,
    @required this.containerHeight,
  })  : second1top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 0.0,
          timeFinal: 1 / 15,
        ).tween,
        second1bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 14 / 15 * containerHeight,
          timeInitial: 1 / 30,
          timeFinal: 1 / 15,
        ).tween,
        second2top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 1 / 15,
          timeFinal: 2 / 15,
        ).tween,
        second2bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 13 / 15 * containerHeight,
          timeInitial: 3 / 30,
          timeFinal: 2 / 15,
        ).tween,
        second3top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 2 / 15,
          timeFinal: 3 / 15,
        ).tween,
        second3bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 12 / 15 * containerHeight,
          timeInitial: 5 / 30,
          timeFinal: 3 / 15,
        ).tween,
        second4top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 3 / 15,
          timeFinal: 4 / 15,
        ).tween,
        second4bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 11 / 15 * containerHeight,
          timeInitial: 7 / 30,
          timeFinal: 4 / 15,
        ).tween,
        second5top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 4 / 15,
          timeFinal: 5 / 15,
        ).tween,
        second5bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 10 / 15 * containerHeight,
          timeInitial: 9 / 30,
          timeFinal: 5 / 15,
        ).tween,
        second6top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 5 / 15,
          timeFinal: 6 / 15,
        ).tween,
        second6bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 9 / 15 * containerHeight,
          timeInitial: 11 / 30,
          timeFinal: 6 / 15,
        ).tween,
        second7top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 6 / 15,
          timeFinal: 7 / 15,
        ).tween,
        second7bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 8 / 15 * containerHeight,
          timeInitial: 13 / 30,
          timeFinal: 7 / 15,
        ).tween,
        second8top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 7 / 15,
          timeFinal: 8 / 15,
        ).tween,
        second8bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 7 / 15 * containerHeight,
          timeInitial: 15 / 30,
          timeFinal: 8 / 15,
        ).tween,
        second9top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 8 / 15,
          timeFinal: 9 / 15,
        ).tween,
        second9bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 6 / 15 * containerHeight,
          timeInitial: 17 / 30,
          timeFinal: 9 / 15,
        ).tween,
        second10top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 9 / 15,
          timeFinal: 10 / 15,
        ).tween,
        second10bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 5 / 15 * containerHeight,
          timeInitial: 19 / 30,
          timeFinal: 10 / 15,
        ).tween,
        second11top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 10 / 15,
          timeFinal: 11 / 15,
        ).tween,
        second11bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 4 / 15 * containerHeight,
          timeInitial: 21 / 30,
          timeFinal: 11 / 15,
        ).tween,
        second12top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 11 / 15,
          timeFinal: 12 / 15,
        ).tween,
        second12bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 3 / 15 * containerHeight,
          timeInitial: 23 / 30,
          timeFinal: 12 / 15,
        ).tween,
        second13top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 12 / 15,
          timeFinal: 13 / 15,
        ).tween,
        second13bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 2 / 15 * containerHeight,
          timeInitial: 25 / 30,
          timeFinal: 13 / 15,
        ).tween,
        second14top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 13 / 15,
          timeFinal: 14 / 15,
        ).tween,
        second14bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 1 / 15 * containerHeight,
          timeInitial: 27 / 30,
          timeFinal: 14 / 15,
        ).tween,
        second15top = BarAnimation(
          controller: controller,
          beginAnimationPosition: -containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 14 / 15,
          timeFinal: 15 / 15,
        ).tween,
        second15bottom = BarAnimation(
          controller: controller,
          beginAnimationPosition: containerHeight,
          endAnimationPosition: 0.0,
          timeInitial: 29 / 30,
          timeFinal: 15 / 15,
        ).tween;

  final Animation<num> second1top;
  final Animation<num> second1bottom;
  final Animation<num> second2top;
  final Animation<num> second2bottom;
  final Animation<num> second3top;
  final Animation<num> second3bottom;
  final Animation<num> second4top;
  final Animation<num> second4bottom;
  final Animation<num> second5top;
  final Animation<num> second5bottom;
  final Animation<num> second6top;
  final Animation<num> second6bottom;
  final Animation<num> second7top;
  final Animation<num> second7bottom;
  final Animation<num> second8top;
  final Animation<num> second8bottom;
  final Animation<num> second9top;
  final Animation<num> second9bottom;
  final Animation<num> second10top;
  final Animation<num> second10bottom;
  final Animation<num> second11top;
  final Animation<num> second11bottom;
  final Animation<num> second12top;
  final Animation<num> second12bottom;
  final Animation<num> second13top;
  final Animation<num> second13bottom;
  final Animation<num> second14top;
  final Animation<num> second14bottom;
  final Animation<num> second15top;
  final Animation<num> second15bottom;
}
