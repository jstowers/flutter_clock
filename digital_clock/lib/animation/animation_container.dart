// import 'package:flutter/material.dart';

// class AnimationContainer extends StatelessWidget {
//   final Color backgroundColor;
//   final double boxWidth;
//   final double boxHeight;
//   final TextStyle defaultStyle;
//   final String timeDigit;
//   final AnimationDetail animationDetail;

//   AnimationContainer({
//     @required this.backgroundColor,
//     @required this.boxWidth,
//     @required this.boxHeight,
//     @required this.defaultStyle,
//     @required this.timeDigit,
//   })

//   @override
//   Widget build(BuildContext context) {
//     return (
//       Container(
//         color: backgroundColor,
//         height: boxHeight,
//         width: boxWidth,
//         child: Stack(
//           children: <Widget>[
//             AnimationDetail(
//               controller: 1
//             ),
//             Center(
//               child: DefaultTextStyle(
//                 child: Text(timeDigit),
//                 style: defaultStyle,
//                 textAlign: TextAlign.center,
//               )
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
