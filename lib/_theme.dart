import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';

final theme = ThemeData(
  fontFamily: 'Barlow',
  scaffoldBackgroundColor: mainBackgroundColor,
);

class AppTextTheme {
  const AppTextTheme(this._textTheme);

  final TextTheme _textTheme;

  TextStyle? get title => _textTheme.titleLarge?.copyWith(
        fontFamily: 'BarlowCondensed',
        color: Colors.black,
        fontSize: 32,
      );

  TextStyle? get headline => _textTheme.headlineLarge?.copyWith(
        fontFamily: 'BarlowCondensed',
        color: Colors.black,
      );

  TextStyle? get body => _textTheme.bodyLarge?.copyWith(
        color: Colors.black,
        fontSize: 16,
        height: 2,
      );
}
