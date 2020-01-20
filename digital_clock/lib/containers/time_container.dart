import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/screen_settings.dart';
import 'one_third_time_quadrant.dart';
import 'two_third_time_quadrant.dart';

class TimeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSettings = Provider.of<ScreenSettings>(context);

    return LayoutBuilder(builder: (context, constraints) {
      screenSettings.containerWidth = constraints.maxWidth;
      screenSettings.containerHeight = constraints.maxWidth * (3 / 5) - 2;

      return Container(
        width: screenSettings.containerWidth,
        height: screenSettings.containerHeight,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                OneThirdTimeQuadrant(
                    quadrantId: 4, backgroundColor: Colors.green),
                TwoThirdTimeQuadrant(
                    quadrantId: 1, backgroundColor: Colors.red),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TwoThirdTimeQuadrant(
                    quadrantId: 3, backgroundColor: Colors.blue),
                OneThirdTimeQuadrant(
                    quadrantId: 2, backgroundColor: Colors.orange),
              ],
            ),
          ],
        ),
      );
    });
  }
}
