import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../containers/time_animation_stack.dart';
import '../providers/screen_settings.dart';

class OneThirdTimeQuadrant extends StatelessWidget {
  final int quadrantId;
  final Color backgroundColor;

  OneThirdTimeQuadrant(
      {@required this.quadrantId, @required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final screenSettings = Provider.of<ScreenSettings>(context);
    final width = 1 / 3 * screenSettings.containerWidth;

    return Container(
      key: Key('small_time_quadrant_container_$quadrantId'),
      color: backgroundColor,
      height: screenSettings.quadrantHeight,
      width: width,
      child: TimeAnimationStack(quadrantId: quadrantId),
    );
  }
}
