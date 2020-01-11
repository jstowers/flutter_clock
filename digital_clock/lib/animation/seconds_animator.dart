import 'package:digital_clock/animation/initial_load_page.dart';
import 'package:flutter/material.dart';

import 'package:digital_clock/animation/seconds_detail_page.dart';

class SecondsBarAnimator extends StatefulWidget {
  final containerWidth;
  final containerHeight;
  final currentSecond;
  final finalSecond;
  final animationDuration;
  final isInitialLoad;

  SecondsBarAnimator({
    @required this.containerWidth,
    @required this.containerHeight,
    this.currentSecond,
    this.finalSecond,
    this.isInitialLoad,
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
      print('IS INITIAL LOAD');
      return InitialLoadPage(
        controller: _controller,
        containerWidth: widget.containerWidth,
        containerHeight: widget.containerHeight,
        currentSecond: widget.currentSecond,
        finalSecond: widget.finalSecond,
      );
    } else {
      print('NOT INITIAL LOAD');
      return SecondsDetailPage(
        controller: _controller,
        containerWidth: widget.containerWidth,
        containerHeight: widget.containerHeight,
      );
    }
  }
}
