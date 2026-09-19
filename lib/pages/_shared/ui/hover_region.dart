import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/nullable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class const HoverRegion({
  required final Widget Function(
    BuildContext context,
    // ignore: avoid_positional_boolean_parameters
    bool isHovering,
    Widget? child,
  )
  builder,
  final VoidCallback? onTap,
  final Widget? child,
  super.key,
}) extends StatefulWidget {
  @override
  State<HoverRegion> createState() => _HoverRegionState();
}

class _HoverRegionState extends State<HoverRegion> {
  bool _isHovering = false;

  void _flip(bool value) => setState(() => _isHovering = value);

  @override
  Widget build(BuildContext context) {
    final onTap = widget.onTap;
    return ClickableRegion(
      onTap: onTap,
      onEnter: () => onTap.let((_) => _flip(true)),
      onExit: () => onTap.let((_) => _flip(false)),
      child: widget.builder(context, _isHovering, widget.child),
    );
  }
}
