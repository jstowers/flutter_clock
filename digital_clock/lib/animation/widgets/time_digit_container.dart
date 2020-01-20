import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/screen_settings.dart';

class TimeDigitContainer extends StatelessWidget {
  final String timeDigit;
  final int quadrant;

  TimeDigitContainer({@required this.timeDigit, @required this.quadrant});

  @override
  Widget build(BuildContext context) {
    final screenSettings = Provider.of<ScreenSettings>(context, listen: false);
    final fontSize = screenSettings.fontSize;
    final twoThirdQuadrantPadding = 1 / 2 * screenSettings.containerWidth;

    return Center(
      key: Key('time_digit_container_quadrant_$quadrant'),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: fontSize),
        child: Padding(
          padding: quadrant == 1
              ? EdgeInsets.only(right: twoThirdQuadrantPadding)
              : quadrant == 3
                  ? EdgeInsets.only(left: twoThirdQuadrantPadding)
                  : EdgeInsets.zero,
          child: Text(timeDigit),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
