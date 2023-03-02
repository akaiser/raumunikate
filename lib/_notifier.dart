import 'package:flutter/foundation.dart';

class NavBarNotifier with ChangeNotifier {
  bool isExpanded = true;

  void get toggle {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
