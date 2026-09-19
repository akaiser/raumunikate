import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class const ResponsiveLayout({
  final WidgetBuilder? _xxl,
  final WidgetBuilder? _xl,
  final WidgetBuilder? _l,
  final WidgetBuilder? _m,
  final WidgetBuilder? _s,
  final WidgetBuilder? _xs,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    switch (context.breakpoint) {
      case .xxl:
        final result = _xxl?.call(context);
        if (result != null) return result;
        continue xl;
      xl:
      case .xl:
        final result = _xl?.call(context);
        if (result != null) return result;
        continue l;
      l:
      case .l:
        final result = _l?.call(context);
        if (result != null) return result;
        continue m;
      m:
      case .m:
        final result = _m?.call(context);
        if (result != null) return result;
        continue s;
      s:
      case .s:
        final result = _s?.call(context);
        if (result != null) return result;
        continue xs;
      xs:
      case .xs:
        final result = _xs?.call(context);
        if (result != null) return result;
        throw Exception('This might happen!');
    }
  }
}
