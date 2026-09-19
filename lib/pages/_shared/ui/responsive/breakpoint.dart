import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

enum Breakpoint { xxl, xl, l, m, s, xs }

extension on double {
  Breakpoint get breakpoint => switch (this) {
    > 1399 => .xxl,
    > 1199 => .xl,
    > 991 => .l,
    > 767 => .m,
    > 575 => .s,
    _ => .xs,
  };
}

extension BreakpointExt on BuildContext {
  Breakpoint get breakpoint => screenSize.width.breakpoint;

  bool get isFullWidthNavBar => breakpoint != .xs;

  bool get isXsBreakpoint => breakpoint == .xs;

  bool get isSxsBreakpoint => switch (breakpoint) {
    .s || .xs => true,
    _ => false,
  };

  bool get isShittySmallDevice {
    final screenSize = this.screenSize;
    return screenSize.width <= 380 && screenSize.height <= 560;
  }
}
