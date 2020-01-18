import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeState extends ChangeNotifier {
  get dateTime => _dateTime;

  DateTime _dateTime;
  Timer _timer;

  get is24HourFormat => _is24HourFormat;
  bool _is24HourFormat = true;
  set is24HourFormat(bool is24HourFormat) {
    if (_is24HourFormat != is24HourFormat) {
      _is24HourFormat = is24HourFormat;
      notifyListeners();
    }
  }

  get hourDigitOne => _hourDigitOne;
  String _hourDigitOne = '4';

  get hourDigitTwo => _hourDigitTwo;
  String _hourDigitTwo = '1';

  get minuteDigitOne => _minuteDigitOne;
  String _minuteDigitOne = '3';

  get minuteDigitTwo => _minuteDigitTwo;
  String _minuteDigitTwo = '2';

  get hour => _hour;
  num _hour = 12;

  get minute => _minute;
  num _minute = 0;

  get second => _second;
  num _second = 0;

  get isInitialLoad => _isInitialLoad;
  bool _isInitialLoad = true;
  _setIsInitialLoad(bool value) {
    print('INSIDE _setIsInitialLoad');
    _isInitialLoad = value;
    //notifyListeners();
  }

  bool _isFirstSecond = true;

  void updateTime() {
    _dateTime = DateTime.now();

    if (_hour != _dateTime.hour) {
      _hour = _dateTime.hour;
      final formattedHour =
          DateFormat(is24HourFormat ? 'HH' : 'hh').format(_dateTime);
      _hourDigitOne = formattedHour.substring(0, 1);
      _hourDigitTwo = formattedHour.substring(1, 2);
    }

    if (_minute != _dateTime.minute) {
      _minute = _dateTime.minute;
      final formattedMinute = DateFormat('mm').format(_dateTime);
      _minuteDigitOne = formattedMinute.substring(0, 1);
      _minuteDigitTwo = formattedMinute.substring(1, 2);
    }

    if (_second != _dateTime.second) {
      _second = _dateTime.second;
      notifyListeners();
    }

    _timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: _dateTime.millisecond),
        updateTime);
    _checkInitialLoadComplete();
  }

  void _checkInitialLoadComplete() {
    if (_isFirstSecond) {
      //_setLastSecondInitialLoad(_second);
      _isFirstSecond = false;
    }
    if (_second == 0 || _second == 15 || _second == 30 || _second == 45) {
      _setIsInitialLoad(false);
    }
  }

  // get lastSecondInitialLoad => _lastSecondInitialLoad;
  // num _lastSecondInitialLoad = 0;
  // set lastSecondInitialLoad(num value) {
  //   _lastSecondInitialLoad = value;
  // }

  // void _setLastSecondInitialLoad(num firstSecond) {
  //   if (firstSecond > 0 && firstSecond <= 15) {
  //     lastSecondInitialLoad = 15;
  //   } else if (firstSecond > 15 && firstSecond <= 30) {
  //     lastSecondInitialLoad = 30;
  //   } else if (firstSecond > 30 && firstSecond <= 45) {
  //     lastSecondInitialLoad = 45;
  //   } else
  //     lastSecondInitialLoad = 0;
  // }

  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
