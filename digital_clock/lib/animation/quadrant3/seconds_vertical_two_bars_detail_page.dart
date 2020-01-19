import 'package:flutter/material.dart';

import '../widgets/two_bars.dart';
import '../widgets/two_bars_animation.dart';
import 'seconds_vertical_two_bars_enter_animation.dart';

class SecondsVerticalTwoBarsDetailPage extends StatefulWidget {
  final SecondsVerticalTwoBarsEnterAnimation animation;
  final AnimationController controller;
  final containerWidth;
  final containerHeight;

  SecondsVerticalTwoBarsDetailPage({
    @required this.controller,
    @required this.containerWidth,
    @required this.containerHeight,
  }) : animation = SecondsVerticalTwoBarsEnterAnimation(
          controller: controller,
          containerHeight: containerHeight,
        );

  @override
  _SecondsVerticalTwoBarsDetailPage createState() =>
      _SecondsVerticalTwoBarsDetailPage();
}

class _SecondsVerticalTwoBarsDetailPage
    extends State<SecondsVerticalTwoBarsDetailPage> {
  Widget _buildAnimation(BuildContext context, Widget child) {
    final animation = widget.animation;
    final containerWidth = widget.containerWidth;
    final containerHeight = widget.containerHeight;

    List<TwoBars> twoBarsAnimationList = [
      TwoBars(
        animationTop: animation.second1top,
        animationBottom: animation.second1bottom,
        topHeightRatio: 14 / 15,
        leftPositionRatio: 14 / 15,
      ),
      TwoBars(
        animationTop: animation.second2top,
        animationBottom: animation.second2bottom,
        topHeightRatio: 13 / 15,
        leftPositionRatio: 13 / 15,
      ),
      TwoBars(
        animationTop: animation.second3top,
        animationBottom: animation.second3bottom,
        topHeightRatio: 12 / 15,
        leftPositionRatio: 12 / 15,
      ),
      TwoBars(
        animationTop: animation.second4top,
        animationBottom: animation.second4bottom,
        topHeightRatio: 11 / 15,
        leftPositionRatio: 11 / 15,
      ),
      TwoBars(
        animationTop: animation.second5top,
        animationBottom: animation.second5bottom,
        topHeightRatio: 10 / 15,
        leftPositionRatio: 10 / 15,
      ),
      TwoBars(
        animationTop: animation.second6top,
        animationBottom: animation.second6bottom,
        topHeightRatio: 9 / 15,
        leftPositionRatio: 9 / 15,
      ),
      TwoBars(
        animationTop: animation.second7top,
        animationBottom: animation.second7bottom,
        topHeightRatio: 8 / 15,
        leftPositionRatio: 8 / 15,
      ),
      TwoBars(
        animationTop: animation.second8top,
        animationBottom: animation.second8bottom,
        topHeightRatio: 7 / 15,
        leftPositionRatio: 7 / 15,
      ),
      TwoBars(
        animationTop: animation.second9top,
        animationBottom: animation.second9bottom,
        topHeightRatio: 6 / 15,
        leftPositionRatio: 6 / 15,
      ),
      TwoBars(
        animationTop: animation.second10top,
        animationBottom: animation.second10bottom,
        topHeightRatio: 5 / 15,
        leftPositionRatio: 5 / 15,
      ),
      TwoBars(
        animationTop: animation.second11top,
        animationBottom: animation.second11bottom,
        topHeightRatio: 4 / 15,
        leftPositionRatio: 4 / 15,
      ),
      TwoBars(
        animationTop: animation.second12top,
        animationBottom: animation.second12bottom,
        topHeightRatio: 3 / 15,
        leftPositionRatio: 3 / 15,
      ),
      TwoBars(
        animationTop: animation.second13top,
        animationBottom: animation.second13bottom,
        topHeightRatio: 2 / 15,
        leftPositionRatio: 2 / 15,
      ),
      TwoBars(
        animationTop: animation.second14top,
        animationBottom: animation.second14bottom,
        topHeightRatio: 1 / 15,
        leftPositionRatio: 1 / 15,
      ),
      TwoBars(
        animationTop: animation.second15top,
        animationBottom: animation.second15bottom,
        topHeightRatio: 0.0,
        leftPositionRatio: 0.0,
      ),
    ];

    return TwoBarsAnimation(
      animationList: twoBarsAnimationList,
      containerWidth: containerWidth,
      containerHeight: containerHeight,
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
