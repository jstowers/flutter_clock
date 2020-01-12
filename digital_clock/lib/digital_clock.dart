// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_clock_helper/model.dart';
import 'package:digital_clock/animation/seconds_animator.dart';

enum _Element {
  background,
  text,
  shadow,
}

final _lightTheme = {
  _Element.background: Color(0xFF81B3FE),
  _Element.text: Colors.white,
  _Element.shadow: Colors.black,
};

final _darkTheme = {
  _Element.background: Colors.black,
  _Element.text: Colors.white,
  _Element.shadow: Color(0xFF174EA6),
};

/// A basic digital clock.
///
/// You can do better than this!
class DigitalClock extends StatefulWidget {
  const DigitalClock(this.model);

  final ClockModel model;

  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime _dateTime = DateTime.now();
  num _currentSecond;
  bool isInitialLoad;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    widget.model.addListener(_updateModel);
    isInitialLoad = true;
    _updateTime();
    _updateModel();
  }

  @override
  void didUpdateWidget(DigitalClock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      oldWidget.model.removeListener(_updateModel);
      widget.model.addListener(_updateModel);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    widget.model.removeListener(_updateModel);
    widget.model.dispose();
    super.dispose();
  }

  void _updateModel() {
    setState(() {
      // Cause the clock to rebuild when the model changes.
    });
  }

  void _updateTime() {
    setState(() {
      _dateTime = DateTime.now();

      // set current second for triggering differnt container animations
      _currentSecond = _dateTime.second;
      print('currentSecond = $_currentSecond');

      // Update once per minute. If you want to update every second, use the
      // following code.
      // _timer = Timer(
      //   Duration(minutes: 1) -
      //       Duration(seconds: _dateTime.second) -
      //       Duration(milliseconds: _dateTime.millisecond),
      //   _updateTime,
      // );

      // Update once per second, but make sure to do it at the beginning of each
      // // new second, so that the clock is accurate.
      _timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: _dateTime.millisecond),
        _updateTime,
      );

      if (_currentSecond == 0 ||
          _currentSecond == 15 ||
          _currentSecond == 30 ||
          _currentSecond == 45) {
        isInitialLoad = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).brightness == Brightness.light
        ? _lightTheme
        : _darkTheme;

    final is24HourFormat = widget.model.is24HourFormat;

    final hour = DateFormat(is24HourFormat ? 'HH' : 'hh').format(_dateTime);
    final hourDigitOne = hour.substring(0, 1);
    final hourDigitTwo = hour.substring(1, 2);

    final minute = DateFormat('mm').format(_dateTime);
    final minuteDigitOne = minute.substring(0, 1);
    final minuteDigitTwo = minute.substring(1, 2);

    // Set boxHeight and boxWidth based on screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = (3 / 5 * screenWidth);

    final containerWidth = screenWidth - 4;
    final containerHeight = screenHeight - 4;

    // final smallBoxWidth = 2 / 5 * containerWidth;
    // final largeBoxWidth = 3 / 5 * containerWidth;

    final boxWidth = containerWidth / 2;
    final boxHeight = containerHeight / 2;

    // Set font size and styling
    final fontSize = 4 / 5 * boxHeight;
    // final offset = -fontSize / 7;
    final defaultStyle = TextStyle(
      color: colors[_Element.text],
      fontFamily: 'PressStart2P',
      fontSize: fontSize,
      shadows: [
        Shadow(
          blurRadius: 0,
          color: colors[_Element.shadow],
          offset: Offset(10, 0),
        ),
      ],
    );

    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Color(0xFF4285F4),
              height: boxHeight,
              width: boxWidth,
              child: Stack(
                children: <Widget>[
                  if (_currentSecond >= 45 && _currentSecond < 60)
                    SecondsBarAnimator(
                      containerWidth: boxWidth,
                      containerHeight: boxHeight,
                      currentSecond: _currentSecond,
                      finalSecond: 60,
                      isInitialLoad: isInitialLoad,
                    ),
                  Center(
                    child: DefaultTextStyle(
                      style: defaultStyle,
                      child: Text(hourDigitOne),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              height: boxHeight,
              width: boxWidth,
              child: Stack(
                children: <Widget>[
                  if (_currentSecond >= 0 && _currentSecond < 15)
                    SecondsBarAnimator(
                      containerWidth: boxWidth,
                      containerHeight: boxHeight,
                      currentSecond: _currentSecond,
                      finalSecond: 15,
                      isInitialLoad: isInitialLoad,
                    ),
                  Center(
                    child: DefaultTextStyle(
                      style: defaultStyle,
                      child: Text(hourDigitTwo),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              color: Color(0xFFf4c20d),
              height: boxHeight,
              width: boxWidth,
              child: Stack(
                children: <Widget>[
                  if (_currentSecond >= 30 && _currentSecond < 45)
                    SecondsBarAnimator(
                      containerWidth: boxWidth,
                      containerHeight: boxHeight,
                      currentSecond: _currentSecond,
                      finalSecond: 45,
                      isInitialLoad: isInitialLoad,
                    ),
                  Center(
                    child: DefaultTextStyle(
                      style: defaultStyle,
                      child: Text(minuteDigitOne),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: boxHeight,
              width: boxWidth,
              child: Stack(
                children: <Widget>[
                  if (_currentSecond >= 15 && _currentSecond < 30)
                    SecondsBarAnimator(
                      containerWidth: boxWidth,
                      containerHeight: boxHeight,
                      currentSecond: _currentSecond,
                      finalSecond: 30,
                      isInitialLoad: isInitialLoad,
                    ),
                  Center(
                    child: DefaultTextStyle(
                      style: defaultStyle,
                      child: Text(minuteDigitTwo),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
