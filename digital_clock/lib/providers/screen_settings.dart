import 'package:flutter/material.dart';

enum _Element {
  background,
  text,
  shadow,
}

class ScreenSettings with ChangeNotifier {
  static final _lightTheme = {
    _Element.background: Color(0xFF81B3FE),
    _Element.text: Colors.white,
    _Element.shadow: Colors.black,
  };

  static final _darkTheme = {
    _Element.background: Colors.black,
    _Element.text: Colors.white,
    _Element.shadow: Color(0xFF174EA6),
  };

  get containerWidth => _containerWidth;
  double _containerWidth = 0.0;
  set containerWidth(double containerWidth) {
    if (_containerWidth != containerWidth) {
      _containerWidth = containerWidth;
    }
  }

  get containerHeight => _containerHeight;
  double _containerHeight = 0.0;
  set containerHeight(double containerHeight) {
    if (_containerHeight != containerHeight) {
      _containerHeight = containerHeight;
    }
  }

  get boxWidth => containerWidth / 2;

  get boxHeight => containerHeight / 2;

  get fontSize => 4 / 5 * boxHeight;

  get fontOffset => -fontSize / 7;

  get isLightTheme => _isLightTheme;
  bool _isLightTheme = true;
  set isLightTheme(bool isLightTheme) {
    if (_isLightTheme != isLightTheme) {
      _isLightTheme = isLightTheme;
      //notifyListeners();
    }
  }

  get colorTheme => _isLightTheme ? _lightTheme : _darkTheme;
  Map<_Element, Color> _colorTheme = _lightTheme;
  set colorTheme(Brightness brightness) {
    if (brightness == Brightness.light) {
      _colorTheme = _lightTheme;
    } else {
      _colorTheme = _darkTheme;
    }
    notifyListeners();
  }

  // get defaultStyle => _defaultStyle;
  // TextStyle _defaultStyle = TextStyle(
  //     color: _colorTheme[_Element.text],
  //     fontFamily: 'PressStart2P',
  //     fontSize: fontSize,
  //     shadows: [
  //       Shadow(
  //         blurRadius: 0,
  //         color: colors[_Element.shadow],
  //         offset: Offset(10, 0),
  //       ),
  //     ],
}
