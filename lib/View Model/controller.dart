import 'package:flutter/material.dart';

class Controller with ChangeNotifier {
  bool isObsecure = true;

  void showpassword() {
    isObsecure = !isObsecure;
    notifyListeners();
  }

  bool isAddIconPressed = false;
  bool isRemoveIconPressed = false;
  int totalprice = 0000;
  void incrementCounter(
    maxQuantity,
    quantity,
    price,
  ) {
    if (maxQuantity > quantity) {
      quantity++;
    }

    isAddIconPressed = true;
    isRemoveIconPressed = false;
    totalprice = (price * quantity);
    print(totalprice);
    notifyListeners();
  }

  void decrementCounter(int price, quantity) {
    if (quantity > 0) {
      quantity--;
      isAddIconPressed = false;
      isRemoveIconPressed = true;
      // if(totalprice <0){
      totalprice = (totalprice - price);

      // }

      notifyListeners();
    }
  }

  // clearData() {
  //   totalprice = 0;
  //   quantity = 0;
  //   notifyListeners();
  // }
}
