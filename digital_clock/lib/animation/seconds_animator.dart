import 'package:digital_clock/animation/initial_load_page.dart';
import 'package:digital_clock/animation/seconds_horizontal_detail_page.dart';
import 'package:digital_clock/animation/seconds_vertical_two_bars_detail_page.dart';
import 'package:flutter/material.dart';

import 'package:digital_clock/animation/seconds_detail_page.dart';

class SecondsBarAnimator extends StatefulWidget {
  final containerWidth;
  final containerHeight;
  final currentSecond;
  final finalSecond;
  final animationDuration;
  final isInitialLoad;
  final int displayQuadrant;

  SecondsBarAnimator({
    @required this.containerWidth,
    @required this.containerHeight,
    this.currentSecond,
    this.finalSecond,
    this.isInitialLoad,
    this.displayQuadrant,
  }) : animationDuration = finalSecond - currentSecond;

  @override
  _SecondsBarAnimator createState() => _SecondsBarAnimator();
}

class _SecondsBarAnimator extends State<SecondsBarAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.animationDuration * 1000),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isInitialLoad) {
      return InitialLoadPage(
        controller: _controller,
        containerWidth: widget.containerWidth,
        containerHeight: widget.containerHeight,
        currentSecond: widget.currentSecond,
        finalSecond: widget.finalSecond,
      );
    } else {
      if (widget.displayQuadrant == 1) {
        return SecondsDetailPage(
          controller: _controller,
          containerWidth: widget.containerWidth,
          containerHeight: widget.containerHeight,
        );
      } else if (widget.displayQuadrant == 2) {
        return SecondsHorizontalDetailPage(
          controller: _controller,
          containerWidth: widget.containerWidth,
          containerHeight: widget.containerHeight,
        );
      } else if (widget.displayQuadrant == 3) {
        return SecondsVerticalTwoBarsDetailPage(
          controller: _controller,
          containerWidth: widget.containerWidth,
          containerHeight: widget.containerHeight,
        );
      } else {
        return SecondsDetailPage(
          controller: _controller,
          containerWidth: widget.containerWidth,
          containerHeight: widget.containerHeight,
        );
      }
    }
  }
}
