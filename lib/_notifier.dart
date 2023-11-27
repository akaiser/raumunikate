import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

export 'package:provider/provider.dart';

class NavBarNotifier with ChangeNotifier {
  bool isExpanded = true;

  void toggle() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}

class ScrollToBottomNotifier with ChangeNotifier {
  void notify() => notifyListeners();
}

extension BuildContextExt on BuildContext {
  NavBarNotifier get navBarNotifier => read<NavBarNotifier>();

  ScrollToBottomNotifier get scrollToBottomNotifier =>
      read<ScrollToBottomNotifier>();
}
