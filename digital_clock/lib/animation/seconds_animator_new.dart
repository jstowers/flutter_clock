import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../animation/initial_load_page.dart';
import '../animation/seconds_detail_page.dart';
import '../providers/screen_settings.dart';
import '../providers/time_state.dart';

class SecondsAnimator extends StatefulWidget {
  final num second;
  final bool isInitialLoad;
  final int quadrant;
  final animationDuration;

  // TODO: get animation sequences working for initial load
  // TODO: get post-initial load sequences working for each quadrant
  SecondsAnimator({
    @required this.second,
    @required this.isInitialLoad,
    @required this.quadrant,
  }) : animationDuration = isInitialLoad ? 5 : 15;

  @override
  _SecondsAnimator createState() => _SecondsAnimator();
}

class _SecondsAnimator extends State<SecondsAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.animationDuration),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /*
    if currentSecond < 15 => quadrant1,
    if currentSecond < 30 => quadrant2,
    if currentSecond < 45 => quadrant3,
    if currentSecond < 60 => quadrant4,
  */

  // else
  /*
    FourSquaresContainer(
      scaffold: 
      quadrant1: 
      quadrant2:
      quadrant3:
      quadrant4:
    )

  */

  @override
  Widget build(BuildContext context) {
    //final currentSecond = widget.currentSecond;
    final screenSettings = Provider.of<ScreenSettings>(context);
    final timeState = Provider.of<TimeState>(context);

    if (timeState.isInitialLoad) {
      int finalSecond = 0;
      if (timeState.second > 0 && timeState.second <= 15) {
        finalSecond = 15;
      } else if (timeState.second > 15 && timeState.second <= 30) {
        finalSecond = 30;
      } else if (timeState.second > 30 && timeState.second <= 45) {
        finalSecond = 45;
      } else
        finalSecond = 0;

      return InitialLoadPage(
        controller: _controller,
        containerWidth: screenSettings.containerWidth,
        containerHeight: screenSettings.containerHeight,
        currentSecond: timeState.second,
        finalSecond: finalSecond,
      );
    } else {
      return SecondsDetailPage(
        controller: _controller,
        containerWidth: screenSettings.containerWidth,
        containerHeight: screenSettings.containerHeight,
      );
    }
    //}
    /*  
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
      */
  }
}
