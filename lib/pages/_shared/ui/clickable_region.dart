import 'package:flutter/widgets.dart';

class const ClickableRegion({
  required final Widget _child,
  final VoidCallback? _onTap,
  final VoidCallback? _onEnter,
  final VoidCallback? _onExit,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MouseRegion(
    cursor: _onTap != null ? SystemMouseCursors.click : .defer,
    onEnter: _onEnter != null ? (_) => _onEnter.call() : null,
    onExit: _onExit != null ? (_) => _onExit.call() : null,
    child: GestureDetector(onTap: _onTap, child: _child),
  );
}
