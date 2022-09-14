import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddProfileController with ChangeNotifier {
  PageController controller = PageController();

  bool onLastPage = false;

  void boolianUpdate(value) {
    onLastPage = (value == 2);
    notifyListeners();
  }

  
  
}


  

