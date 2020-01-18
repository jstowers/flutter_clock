import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/screen_settings.dart';
import 'time_quadrant.dart';

class TimeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSettings = Provider.of<ScreenSettings>(context, listen: false);

    if (screenSettings.containerHeight == 0.0 &&
        screenSettings.containerWidth == 0.0) {
      final screenWidth = MediaQuery.of(context).size.width;
      screenSettings.containerWidth = screenWidth - 4;
      screenSettings.containerHeight = (3 / 5 * screenWidth) - 4;
    }

    return Container(
      key: Key('time_container'),
      width: screenSettings.containerWidth,
      height: screenSettings.containerHeight,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TimeQuadrant(quadrantId: 4, backgroundColor: Colors.green),
              TimeQuadrant(quadrantId: 1, backgroundColor: Colors.red),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TimeQuadrant(quadrantId: 3, backgroundColor: Colors.blue),
              TimeQuadrant(quadrantId: 2, backgroundColor: Colors.yellow),
            ],
          )
        ],
      ),
    );
  }
}

/*
Sandbox

//    // return Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: <Widget>[
    //     Container(
    //       color: Color(0xFF4285F4),
    //       height: boxHeight,
    //       width: boxWidth,
    //       child: Consumer<TimeState>(builder: (context, timeState, child) {
    //         return Stack(
    //           children: <Widget>[
    //             SecondsAnimator(
    //               second: timeState.second,
    //               isInitialLoad: timeState.isInitialLoad,
    //             ),
    //             Center(
    //               child: DefaultTextStyle(
    //                 style: TextStyle(fontSize: 96),
    //                 child: Text(timeState.second.toString()),
    //                 textAlign: TextAlign.center,
    //               ),
    //             ),
    //           ],
    //         );
    //       }),
    //     ),
    //   ],
    // );



*/
