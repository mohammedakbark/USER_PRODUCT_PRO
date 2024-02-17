import 'package:flutter/material.dart';

class Controller with ChangeNotifier {
  bool isObsecure = true;

  void showpassword() {
    isObsecure = !isObsecure;
    notifyListeners();
  }
}
