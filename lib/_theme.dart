import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';

final theme = ThemeData(
  fontFamily: 'RobotoCondensed',
  scaffoldBackgroundColor: mainBackgroundColor,
);

class AppTextTheme {
  const AppTextTheme(this._textTheme);

  final TextTheme _textTheme;

  TextStyle? get title => _textTheme.titleLarge?.copyWith(
        fontFamily: 'RobotoCondensed',
        color: mainTODO_0,
        fontSize: 30,
      );

  TextStyle? get headline => _textTheme.headlineLarge?.copyWith(
        fontFamily: 'RobotoCondensed',
        color: mainTODO_0,
      );

  TextStyle? get body => _textTheme.bodyLarge?.copyWith(
        fontFamily: 'RobotoCondensed',
        color: mainTODO_0,
        fontSize: 18,
        height: 1.7,
      );

  TextStyle? get label => _textTheme.labelLarge?.copyWith(
        fontFamily: 'CourierPrime',
        color: mainTODO_0,
        fontSize: 20,
      );
}
