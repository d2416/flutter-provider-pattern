import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  get getCounter => _count;

  void incrementCounter() {
    _count++;
    notifyListeners(); // this method will notify all its listeners whenever we change a value
  }
}
