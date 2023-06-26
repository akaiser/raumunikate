import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_theme.dart';
import 'package:url_launcher/url_launcher.dart';

export 'package:flutter/widgets.dart' show BuildContext;

final _urlLauncherRegex = RegExp(r'^((tel|http|https|mailto):.*)$');

extension BuildContextExt on BuildContext {
  // router

  String? get currentRoutePath => GoRouter.of(this).location;

  // media

  Size get _size => MediaQuery.sizeOf(this);

  double get screenHeight => _size.height;

  double get screenWidth => _size.width;

  // theme

  ThemeData get _td => Theme.of(this);

  AppTextTheme get tt => AppTextTheme(_td.textTheme);

  TextStyle get dts => DefaultTextStyle.of(this).style;

  // util

  void launch(String link) =>
      _urlLauncherRegex.hasMatch(link) ? launchUrl(Uri.parse(link)) : go(link);
}
