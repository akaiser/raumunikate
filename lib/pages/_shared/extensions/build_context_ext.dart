import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_theme.dart';

extension BuildContextExt on BuildContext {
  MediaQueryData get mediaQueryData => MediaQuery.of(this);

  double get screenHeight => mediaQueryData.size.height;

  double get screenWidth => mediaQueryData.size.width;

  String? get currentRoutePath => GoRouter.of(this).location;

  //

  ThemeData get _td => Theme.of(this);

  AppTextTheme get tt => AppTextTheme(_td.textTheme);
}
