import 'package:flutter/material.dart';

class ScreenSettings with ChangeNotifier {
  get containerWidth => _containerWidth;
  double _containerWidth = 0.0;
  set containerWidth(double containerWidth) {
    if (_containerWidth != containerWidth) {
      _containerWidth = containerWidth;
    }
  }

  double get containerHeight => _containerHeight;
  double _containerHeight = 0.0;
  set containerHeight(double containerHeight) {
    if (_containerHeight != containerHeight) {
      _containerHeight = containerHeight;
    }
  }

  get quadrantWidth => _containerWidth / 2;

  get quadrantHeight => _containerHeight / 2;

  get fontSize => 4 / 5 * quadrantHeight;

  get fontOffset => -fontSize / 7;

  get isLightTheme => _isLightTheme;
  bool _isLightTheme = true;
  set isLightTheme(bool isLightTheme) {
    if (_isLightTheme != isLightTheme) {
      _isLightTheme = isLightTheme;
      //notifyListeners();
    }
  }
}
