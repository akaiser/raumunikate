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
  Breakpoint get breakpoint => screenSize.width.breakpoint;

  bool get isFullWidthNavBar => breakpoint != Breakpoint.xs;

  bool get isSxsBreakpoint => switch (breakpoint) {
        Breakpoint.s || Breakpoint.xs => true,
        _ => false,
      };

  bool get isShittySmallDevice {
    final _screenSize = screenSize;
    return _screenSize.width <= 380 && _screenSize.height <= 560;
  }
}
