
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:flutter/foundation.dart';

class BottomController with ChangeNotifier{

    int selectedPos = 0;
    final navigationController = CircularBottomNavigationController(0);
    
    void indexUpdate(selectposition){
      selectedPos = selectposition ?? 0;
      notifyListeners();
    }
}