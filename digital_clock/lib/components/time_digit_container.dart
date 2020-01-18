import 'package:digital_clock/providers/screen_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimeDigitContainer extends StatelessWidget {
  final String timeDigit;
  final int quadrant;

  TimeDigitContainer({@required this.timeDigit, @required this.quadrant});

  @override
  Widget build(BuildContext context) {
    final screenSettings = Provider.of<ScreenSettings>(context, listen: false);
    final boxHeight = screenSettings.boxHeight;

    return Center(
      key: Key('time_digit_container_quadrant_$quadrant'),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 0.8 * boxHeight),
        child: Text(timeDigit),
        textAlign: TextAlign.center,
      ),
    );
  }
}
