import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/time_container.dart';
import 'providers/time_state.dart';

class DigitalClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timeState = Provider.of<TimeState>(context);
    timeState.updateTime();
    return TimeContainer();
  }
}
