import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum _Element {
  background,
  text,
  shadow,
}

enum _GoogleColors {
  red,
  green,
  blue,
  yellow,
}

enum _LenovoColors {
  red,
  white,
}

class Theme with ChangeNotifier {
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

  static final _googleColors = {
    _GoogleColors.red: Colors.red,
    _GoogleColors.green: Colors.green,
    _GoogleColors.blue: Colors.blue,
    _GoogleColors.yellow: Colors.yellow,
  };

  static final _lenovoColors = {
    _LenovoColors.red: Color(0xFFE1140A),
    _LenovoColors.white: Colors.white,
  };

  // get colorTheme => _isLightTheme ? _lightTheme : _darkTheme;
  // Map<_Element, Color> _colorTheme = _lightTheme;
  // set colorTheme(Brightness brightness) {
  //   if (brightness == Brightness.light) {
  //     _colorTheme = _lightTheme;
  //   } else {
  //     _colorTheme = _darkTheme;
  //   }
  //   notifyListeners();
  // }

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
