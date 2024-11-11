import 'package:flutter/material.dart';

class AppViewModel with ChangeNotifier {
  int _index = 0;
  
  int get index => _index;

  void updateIndex(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }
}
