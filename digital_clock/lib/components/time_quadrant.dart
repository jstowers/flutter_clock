import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/time_animation_stack.dart';
import '../providers/screen_settings.dart';

class TimeQuadrant extends StatelessWidget {
  final int quadrantId;
  final Color backgroundColor;

  TimeQuadrant({@required this.quadrantId, @required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final screenSettings = Provider.of<ScreenSettings>(context, listen: false);

    return Container(
      key: Key('time_quadrant_container_$quadrantId'),
      color: backgroundColor,
      height: screenSettings.boxHeight,
      width: screenSettings.boxWidth,
      child: TimeAnimationStack(quadrantId: quadrantId),
    );
  }
}
