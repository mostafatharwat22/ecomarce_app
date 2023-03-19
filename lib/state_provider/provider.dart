import 'package:flutter/foundation.dart';
class PeoviderIncrement extends ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
  void decrementCounter() {
    counter--;
    notifyListeners();
  }
}