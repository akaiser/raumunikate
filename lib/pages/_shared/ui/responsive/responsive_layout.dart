import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    this.xxl,
    this.xl,
    this.l,
    this.m,
    this.s,
    required this.xs,
    super.key,
  });

  final WidgetBuilder? xxl;
  final WidgetBuilder? xl;
  final WidgetBuilder? l;
  final WidgetBuilder? m;
  final WidgetBuilder? s;
  final WidgetBuilder xs;

  @override
  Widget build(BuildContext context) {
    switch (context.breakpoint) {
      case Breakpoint.xxl:
        final result = xxl?.call(context);
        if (result != null) return result;
        continue xl;
      xl:
      case Breakpoint.xl:
        final result = xl?.call(context);
        if (result != null) return result;
        continue l;
      l:
      case Breakpoint.l:
        final result = l?.call(context);
        if (result != null) return result;
        continue m;
      m:
      case Breakpoint.m:
        final result = m?.call(context);
        if (result != null) return result;
        continue s;
      s:
      case Breakpoint.s:
        final result = s?.call(context);
        if (result != null) return result;
        continue xs;
      xs:
      case Breakpoint.xs:
        return xs(context);
    }
  }
}
