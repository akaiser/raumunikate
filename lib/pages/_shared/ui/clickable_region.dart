import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ClickableRegion extends MouseRegion {
  const ClickableRegion({
    SystemMouseCursor? cursor,
    super.key,
    super.onEnter,
    super.onExit,
    required Widget super.child,
  }) : super(cursor: cursor ?? SystemMouseCursors.click);
}
