import 'package:flutter/foundation.dart';

class NavBarNotifier with ChangeNotifier {
  bool isExpanded = false;

  void get toggle {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
