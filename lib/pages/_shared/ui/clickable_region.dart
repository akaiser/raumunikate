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
        cursor: SystemMouseCursors.click,
        onEnter: (_) => onEnter,
        onExit: (_) => onExit,
        child: GestureDetector(onTap: onTap, child: child),
      );
}
