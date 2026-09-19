import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';

@immutable
class const DesignSlideDataEntry(
  final Color cardColor,
  final String title,
  final String text, {
  final String? title2,
  final Color? textColor,
});
