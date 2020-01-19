import 'package:flutter/material.dart';

import '../../animation/widgets/seconds_bar.dart';
import 'quadrant4_enter_animation.dart';

class QuadrantFourAnimationDetail extends StatefulWidget {
  final QuadrantFourEnterAnimation animation;
  final AnimationController controller;
  final containerWidth;
  final containerHeight;

  QuadrantFourAnimationDetail({
    @required this.controller,
    @required this.containerWidth,
    @required this.containerHeight,
  }) : animation = QuadrantFourEnterAnimation(
          controller: controller,
          containerWidth: containerWidth,
        );

  @override
  _QuadrantFourAnimationDetail createState() => _QuadrantFourAnimationDetail();
}

class _QuadrantFourAnimationDetail extends State<QuadrantFourAnimationDetail> {
  Widget _buildAnimation(BuildContext context, Widget child) {
    final animation = widget.animation;

    final containerWidth = widget.containerWidth;
    final containerHeight = widget.containerHeight;

    final barWidth = containerWidth;
    final barHeight = 1 / 15 * containerHeight;

    return Stack(
      children: <Widget>[
        Positioned(
          child: SecondsBar(
              barWidth: barWidth,
              barHeight: barHeight,
              color: animation.colorChange.value),
          top: 14 / 15 * containerHeight,
          left: animation.second1.value,
        ),
        Positioned(
          child: SecondsBar(
              barWidth: barWidth,
              barHeight: barHeight,
              color: animation.colorChange.value),
          top: 13 / 15 * containerHeight,
          left: animation.second2.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 12 / 15 * containerHeight,
          left: animation.second3.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 11 / 15 * containerHeight,
          left: animation.second4.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 10 / 15 * containerHeight,
          left: animation.second5.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 9 / 15 * containerHeight,
          left: animation.second6.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 8 / 15 * containerHeight,
          left: animation.second7.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 7 / 15 * containerHeight,
          left: animation.second8.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 6 / 15 * containerHeight,
          left: animation.second9.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 5 / 15 * containerHeight,
          left: animation.second10.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 4 / 15 * containerHeight,
          left: animation.second11.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 3 / 15 * containerHeight,
          left: animation.second12.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 2 / 15 * containerHeight,
          left: animation.second13.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 1 / 15 * containerHeight,
          left: animation.second14.value,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: 0,
          left: animation.second15.value,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: widget.animation.controller,
    );
  }
}
