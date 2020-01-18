import 'package:flutter/material.dart';

class AnimationModel extends ChangeNotifier {
  bool _isInitialLoad = true;

  get isInitialLoad => _isInitialLoad;

  set setIsInitialLoad(bool value) {
    _isInitialLoad = value;
    notifyListeners();
  }
}
