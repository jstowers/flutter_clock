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
    final fontSize = screenSettings.fontSize;

    return Center(
      key: Key('time_digit_container_quadrant_$quadrant'),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: fontSize),
        child: Text(timeDigit),
        textAlign: TextAlign.center,
      ),
    );
  }
}
