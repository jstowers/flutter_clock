import 'package:flutter/material.dart';

import 'package:digital_clock/animation/seconds_detail_enter_animation.dart';
import 'package:digital_clock/components/seconds_bar.dart';

class SecondsDetailPage extends StatefulWidget {
  final SecondsDetailEnterAnimation animation;
  final AnimationController controller;
  final containerWidth;
  final containerHeight;

  SecondsDetailPage({
    @required this.controller,
    @required this.containerWidth,
    @required this.containerHeight,
  }) : animation = SecondsDetailEnterAnimation(
          controller: controller,
          containerWidth: containerWidth,
          containerHeight: containerHeight,
        );

  @override
  _SecondsDetailPageState createState() => _SecondsDetailPageState();
}

class _SecondsDetailPageState extends State<SecondsDetailPage> {
  Widget _buildAnimation(BuildContext context, Widget child) {
    final animation = widget.animation;

    final containerWidth = widget.containerWidth;
    final containerHeight = widget.containerHeight;

    final barWidth = 1 / 15 * containerWidth;
    final barHeight = containerHeight;

    return Stack(
      children: <Widget>[
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second1.value,
          left: 0.0,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second2.value,
          left: 1 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second3.value,
          left: 2 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second3.value,
          left: 2 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second4.value,
          left: 3 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second5.value,
          left: 4 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second6.value,
          left: 5 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second7.value,
          left: 6 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second8.value,
          left: 7 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second9.value,
          left: 8 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second10.value,
          left: 9 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second11.value,
          left: 10 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second12.value,
          left: 11 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second13.value,
          left: 12 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second14.value,
          left: 13 / 15 * widget.containerWidth,
        ),
        Positioned(
          child: SecondsBar(
            barWidth: barWidth,
            barHeight: barHeight,
            color: animation.colorChange.value,
          ),
          top: animation.second15.value,
          left: 14 / 15 * widget.containerWidth,
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
