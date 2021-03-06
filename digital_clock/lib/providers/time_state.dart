import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:intl/intl.dart';

class TimeState extends ChangeNotifier {
  get dateTime => _dateTime;

  DateTime _dateTime;
  Timer _timer;

  void update(ClockModel clockModel) {
    _is24HourFormat = clockModel.is24HourFormat;

    if (_dateTime == null) {
      updateTime();
    } else {
      formatHour();
    }
    notifyListeners();
  }

  void formatHour() {
    if (!_is24HourFormat) {
      final formattedHour = DateFormat('h').format(_dateTime);
      final hourLength = formattedHour.length;

      if (hourLength == 2) {
        _hourDigitOne = formattedHour.substring(0, 1);
        _hourDigitTwo = formattedHour.substring(1, 2);
      } else {
        _hourDigitOne = '';
        _hourDigitTwo = formattedHour;
      }
    } else {
      // 24-hour format
      final formattedHour = DateFormat('HH').format(_dateTime);
      _hourDigitOne = formattedHour.substring(0, 1);
      _hourDigitTwo = formattedHour.substring(1, 2);
    }
  }

  get is24HourFormat => _is24HourFormat;
  bool _is24HourFormat = true;

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

  bool _isFirstSecond = true;

  get firstSecond => _firstSecond;
  num _firstSecond = 0;

  void updateTime() {
    _dateTime = DateTime.now();

    if (_hour != _dateTime.hour) {
      _hour = _dateTime.hour;
      formatHour();
    }

    if (_minute != _dateTime.minute) {
      _minute = _dateTime.minute;
      final formattedMinute = DateFormat('mm').format(_dateTime);
      _minuteDigitOne = formattedMinute.substring(0, 1);
      _minuteDigitTwo = formattedMinute.substring(1, 2);
    }

    if (_second != _dateTime.second) {
      _second = _dateTime.second;
      print('-------------------------');
      print('second = $second');

      if (_isInitialLoad) {
        _checkInitialLoadComplete();
      }

      if (_isFirstSecond && _isInitialLoad) {
        _firstSecond = _second;
        _setInitialLoadParameters();
        _isFirstSecond = false;
      }

      notifyListeners();
    }

    _timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: _dateTime.millisecond),
        updateTime);
  }

  void _checkInitialLoadComplete() {
    if (_second == 0 || _second == 15 || _second == 30 || _second == 45) {
      _isInitialLoad = false;
    }
  }

  get lastSecondInitialLoad => _lastSecondInitialLoad;
  num _lastSecondInitialLoad = 0;

  get initialBarIndex => _initialBarIndex;
  int _initialBarIndex = 0;

  void _setInitialLoadParameters() {
    if (_firstSecond > 0 && _firstSecond <= 15) {
      _lastSecondInitialLoad = 15;
      _initialBarIndex = _firstSecond;
    } else if (_firstSecond > 15 && _firstSecond <= 30) {
      _lastSecondInitialLoad = 30;
      _initialBarIndex = _firstSecond - (_lastSecondInitialLoad - 15);
    } else if (_firstSecond > 30 && _firstSecond <= 45) {
      _lastSecondInitialLoad = 45;
      _initialBarIndex = _firstSecond - (_lastSecondInitialLoad - 15);
    } else {
      _lastSecondInitialLoad = 60;
      _initialBarIndex = _firstSecond - 45;
    }
  }

  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
