import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/screen_settings.dart';
import '../widgets/elapsed_seconds_container.dart';
import 'initial_load_enter_animation.dart';

class InitialLoadPage extends StatefulWidget {
  final InitialLoadEnterAnimation animation;
  final AnimationController controller;
  final containerWidth;
  final containerHeight;
  final int barIndex;

  InitialLoadPage({
    @required this.controller,
    @required this.containerWidth,
    @required this.containerHeight,
    @required this.barIndex,
  }) : animation = InitialLoadEnterAnimation(
          controller: controller,
          containerWidth: containerWidth,
          containerHeight: containerHeight,
          barIndex: barIndex,
        );

  @override
  _InitialLoadPageState createState() => _InitialLoadPageState();
}

class _InitialLoadPageState extends State<InitialLoadPage> {
  Widget _buildAnimation(BuildContext context, Widget child) {
    final screenSettings = Provider.of<ScreenSettings>(context, listen: false);
    final containerHeight = screenSettings.containerHeight;
    final animation = widget.animation;

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
