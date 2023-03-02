enum Breakpoint {
  huge,
  large,
  medium,
  small,
}

Breakpoint resolveBreakpoint(double screenWidth) => screenWidth > 1199
    ? Breakpoint.huge
    : screenWidth > 991
        ? Breakpoint.large
        : screenWidth > 767
            ? Breakpoint.medium
            : Breakpoint.small;
