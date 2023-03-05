import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_theme.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

extension BuildContextExt on BuildContext {
  // router

  String? get currentRoutePath => GoRouter.of(this).location;

  // responsive

  MediaQueryData get _mediaQueryData => MediaQuery.of(this);

  double get screenHeight => _mediaQueryData.size.height;

  double get screenWidth => _mediaQueryData.size.width;

  Breakpoint get breakpoint => resolveBreakpoint(screenWidth);

  bool get isFullWidthNavBar => breakpoint != Breakpoint.xs;

  // theme

  ThemeData get _td => Theme.of(this);

  AppTextTheme get tt => AppTextTheme(_td.textTheme);
}
