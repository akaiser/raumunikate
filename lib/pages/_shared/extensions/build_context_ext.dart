import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_theme.dart';
import 'package:url_launcher/url_launcher.dart';

export 'package:flutter/widgets.dart' show BuildContext;

extension BuildContextExt on BuildContext {
  // router

  String? get currentRoutePath => GoRouter.of(this).location;

  // media

  MediaQueryData get _mediaQueryData => MediaQuery.of(this);

  double get screenHeight => _mediaQueryData.size.height;

  double get screenWidth => _mediaQueryData.size.width;

  // theme

  ThemeData get _td => Theme.of(this);

  AppTextTheme get tt => AppTextTheme(_td.textTheme);

  // util

  void launch(String link) =>
      link.startsWith('http') ? launchUrl(Uri.parse(link)) : go(link);
}
