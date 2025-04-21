import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class HoverRegion extends StatefulWidget {
  const HoverRegion({required this.builder, this.onTap, this.child});

  final Widget Function(
    BuildContext context,
    // ignore: avoid_positional_boolean_parameters
    bool isHovering,
    Widget? child,
  )
  builder;

  final VoidCallback? onTap;
  final Widget? child;

  @override
  State<HoverRegion> createState() => _HoverRegionState();
}

class _HoverRegionState extends State<HoverRegion> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final onTap = widget.onTap;
    return ClickableRegion(
      onTap: onTap,
      onEnter: () => onTap != null ? setState(() => _isHovering = true) : null,
      onExit: () => onTap != null ? setState(() => _isHovering = false) : null,
      child: widget.builder(context, _isHovering, widget.child),
    );
  }
}
