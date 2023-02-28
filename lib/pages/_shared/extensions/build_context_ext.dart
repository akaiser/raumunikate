import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension BuildContextExt on BuildContext {
  MediaQueryData get mediaQueryData => MediaQuery.of(this);

  double get screenHeight => mediaQueryData.size.height;

  double get screenWidth => mediaQueryData.size.width;

  String? get currentRoutePath => GoRouter.of(this).location;

  //

  ThemeData get td => Theme.of(this);

  TextTheme get tt => td.textTheme;
}
