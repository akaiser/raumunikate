import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    this.huge,
    this.large,
    required this.medium,
    super.key,
  });

  final WidgetBuilder? huge;
  final WidgetBuilder? large;
  final WidgetBuilder medium;

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    return breakpoint == Breakpoint.huge
        ? _HugeFallback(huge: huge, large: large, medium: medium)
        : breakpoint == Breakpoint.large
            ? _LargeFallback(large: large, medium: medium)
            : medium(context);
  }
}

class _HugeFallback extends StatelessWidget {
  const _HugeFallback({
    required this.huge,
    required this.large,
    required this.medium,
  });

  final WidgetBuilder? huge;
  final WidgetBuilder? large;
  final WidgetBuilder medium;

  @override
  Widget build(BuildContext context) {
    final _huge = huge;
    return _huge != null
        ? _huge(context)
        : _LargeFallback(large: large, medium: medium);
  }
}

class _LargeFallback extends StatelessWidget {
  const _LargeFallback({
    required this.large,
    required this.medium,
  });

  final WidgetBuilder? large;
  final WidgetBuilder medium;

  @override
  Widget build(BuildContext context) {
    final _large = large;
    return _large != null ? _large(context) : medium(context);
  }
}
