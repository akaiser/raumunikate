import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

enum Breakpoint {
  xxl,
  xl,
  l,
  m,
  s,
  xs,
}

Breakpoint _resolveBreakpoint(double screenWidth) => screenWidth > 1399
    ? Breakpoint.xxl
    : screenWidth > 1199
        ? Breakpoint.xl
        : screenWidth > 991
            ? Breakpoint.l
            : screenWidth > 767
                ? Breakpoint.m
                : screenWidth > 575
                    ? Breakpoint.s
                    : Breakpoint.xs;

extension BreakpointExt on BuildContext {
  Breakpoint get breakpoint => _resolveBreakpoint(screenWidth);

  bool get isSxsBreakpoint {
    final breakpoint = this.breakpoint;
    return breakpoint == Breakpoint.s || breakpoint == Breakpoint.xs;
  }
}
