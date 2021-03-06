import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../animation/initialLoad/initial_load_page.dart';
import '../animation/quadrant1/seconds_detail_page.dart';
import '../animation/quadrant2/seconds_horizontal_detail_page.dart';
import '../animation/quadrant3/seconds_vertical_two_bars_detail_page.dart';
import '../animation/quadrant4/quadrant4_animation_detail.dart';
import '../providers/screen_settings.dart';
import '../providers/time_state.dart';

class SecondsAnimator extends StatefulWidget {
  final int quadrant;
  final num second;
  bool isInitialLoad;
  num firstSecond;
  num lastSecondInitialLoad;
  int animationDuration;

  SecondsAnimator({
    @required this.quadrant,
    @required this.second,
  }) : animationDuration = 15;

  SecondsAnimator.initialLoad(
    this.quadrant,
    this.second,
    this.isInitialLoad,
    this.firstSecond,
    this.lastSecondInitialLoad,
  ) : animationDuration = lastSecondInitialLoad - firstSecond;

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

  @override
  Widget build(BuildContext context) {
    final screenSettings = Provider.of<ScreenSettings>(context);
    final quadrantWidth = screenSettings.quadrantWidth;
    final quadrantHeight = screenSettings.quadrantHeight;

    final timeState = Provider.of<TimeState>(context);

    // initial load
    if (timeState.isInitialLoad) {
      return InitialLoadPage(
        controller: _controller,
        containerWidth: quadrantWidth,
        containerHeight: quadrantHeight,
        barIndex: timeState.initialBarIndex,
      );
    } else {
      if (widget.quadrant == 1) {
        return SecondsDetailPage(
          controller: _controller,
          containerWidth: quadrantWidth,
          containerHeight: quadrantHeight,
        );
      } else if (widget.quadrant == 2) {
        return SecondsHorizontalDetailPage(
          controller: _controller,
          containerWidth: quadrantWidth,
          containerHeight: quadrantHeight,
        );
      } else if (widget.quadrant == 3) {
        return SecondsVerticalTwoBarsDetailPage(
          controller: _controller,
          containerWidth: quadrantWidth,
          containerHeight: quadrantHeight,
        );
      } else if (widget.quadrant == 4) {
        return QuadrantFourAnimationDetail(
          controller: _controller,
          containerWidth: quadrantWidth,
          containerHeight: quadrantHeight,
        );
      } else
        return SizedBox.shrink();
    }
  } // end build
}
