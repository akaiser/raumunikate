import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class HoverRegion extends StatefulWidget {
  const HoverRegion({
    required this.builder,
    this.child,
    super.key,
  });

  final Widget Function(
    BuildContext context,
    bool isHovering,
    Widget? child,
  ) builder;

  final Widget? child;

  @override
  State<HoverRegion> createState() => _HoverRegionState();
}

class _HoverRegionState extends State<HoverRegion> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) => ClickableRegion(
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        child: widget.builder(context, _isHovering, widget.child),
      );
}
