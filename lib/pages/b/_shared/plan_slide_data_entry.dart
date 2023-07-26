import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';

@immutable
class PlanSlideDataEntry {
  const PlanSlideDataEntry(
    this.cardColor,
    this.title,
    this.text, {
    this.title2,
    this.textColor,
  });

  final Color cardColor;
  final String title;
  final String text;
  final String? title2;
  final Color? textColor;
}
