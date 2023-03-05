enum Breakpoint {
  xxl,
  xl,
  l,
  m,
  s,
  xs,
}

Breakpoint resolveBreakpoint(double screenWidth) => screenWidth > 1399
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
