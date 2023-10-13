import 'package:flutter/widgets.dart';

class ClickableRegion extends StatelessWidget {
  const ClickableRegion({
    this.onTap,
    this.onEnter,
    this.onExit,
    required this.child,
  });

  final VoidCallback? onTap;
  final VoidCallback? onEnter;
  final VoidCallback? onExit;
  final Widget child;

  @override
  Widget build(BuildContext context) => MouseRegion(
        cursor: onTap != null ? SystemMouseCursors.click : MouseCursor.defer,
        onEnter: onEnter != null ? (_) => onEnter?.call() : null,
        onExit: onExit != null ? (_) => onExit?.call() : null,
        child: GestureDetector(onTap: onTap, child: child),
      );
}
