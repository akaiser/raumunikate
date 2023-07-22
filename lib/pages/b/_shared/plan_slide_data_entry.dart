import 'package:meta/meta.dart';

@immutable
class PlanSlideDataEntry {
  const PlanSlideDataEntry(
    this.title,
    this.title2,
    this.text,
  );

  final String title;
  final String? title2;
  final String text;
}
