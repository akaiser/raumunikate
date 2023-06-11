import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

enum Breakpoint {
  xxl,
  xl,
  l,
  m,
  s,
  xs,
}

extension on double {
  Breakpoint get breakpoint => switch (this) {
        > 1399 => Breakpoint.xxl,
        > 1199 => Breakpoint.xl,
        > 991 => Breakpoint.l,
        > 767 => Breakpoint.m,
        > 575 => Breakpoint.s,
        _ => Breakpoint.xs,
      };
}

extension BreakpointExt on BuildContext {
  Breakpoint get breakpoint => screenWidth.breakpoint;

  bool get isFullWidthNavBar => breakpoint != Breakpoint.xs;

  bool get isSxsBreakpoint {
    final breakpoint = this.breakpoint;
    return breakpoint == Breakpoint.s || breakpoint == Breakpoint.xs;
  }

  bool get isShittySmallDevice => screenWidth <= 380 && screenHeight <= 560;
}
