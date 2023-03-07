import 'package:flutter/widgets.dart';

class ClickableRegion extends MouseRegion {
  const ClickableRegion({
    super.key,
    super.onEnter,
    super.onExit,
    super.cursor = SystemMouseCursors.click,
    required Widget super.child,
  });
}
