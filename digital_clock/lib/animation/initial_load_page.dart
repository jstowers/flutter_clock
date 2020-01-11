import 'package:flutter/material.dart';

import 'package:digital_clock/animation/elapsed_seconds_container.dart';
import 'package:digital_clock/animation/initial_load_enter_animation.dart';

class InitialLoadPage extends StatefulWidget {
  final InitialLoadEnterAnimation animation;
  final AnimationController controller;
  final containerWidth;
  final containerHeight;
  final currentSecond;
  final finalSecond;

  InitialLoadPage({
    @required this.controller,
    @required this.containerWidth,
    @required this.containerHeight,
    @required this.currentSecond,
    @required this.finalSecond,
  }) : animation = InitialLoadEnterAnimation(
          controller: controller,
          containerWidth: containerWidth,
          containerHeight: containerHeight,
          barIndex: currentSecond - (finalSecond - 15),
        );

  @override
  _InitialLoadPageState createState() => _InitialLoadPageState();
}

class _InitialLoadPageState extends State<InitialLoadPage> {
  Widget _buildAnimation(BuildContext context, Widget child) {
    final animation = widget.animation;
    final containerHeight = widget.containerHeight;

    return Stack(
      children: <Widget>[
        Positioned(
          child: ElapsedSecondsContainer(
            height: containerHeight,
            width: animation.staticSecondsContainer.value,
            color: animation.colorChange.value,
          ),
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