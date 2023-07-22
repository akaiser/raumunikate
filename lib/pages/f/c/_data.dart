// ignore_for_file: lines_longer_than_80_chars
import 'package:meta/meta.dart';
import 'package:raumunikate/_routes.dart';

// TODO(albert): what to do with this crap?!
const slidesData = [
  SlideDataEntry(
    'TREND',
    'Farbtrends 2023',
    'Welche Farben haben das Jahr 2023 geprägt und wie hat sich das auf den Wohnstil ausgewirkt?',
    'By Ina Kaiser, 22 Dezember 2023',
    Routes.planPage,
  ),
  SlideDataEntry(
    'TIPPS',
    'Farbenfroh und munter',
    'Welche Farben haben das Jahr 2023 geprägt und wie hat sich das auf den Wohnstil ausgewirkt?',
    'By Ina Kaiser, 22 Dezember 2023',
    Routes.projectsPage,
  ),
  SlideDataEntry(
    'WIRKUNG',
    'Farbe wirkt! Wie?',
    'Welche Farben haben das Jahr 2023 geprägt und wie hat sich das auf den Wohnstil ausgewirkt?',
    'By Ina Kaiser, 22 Dezember 2023',
    Routes.productsPage,
  ),
];

@immutable
class SlideDataEntry {
  const SlideDataEntry(
    this.tag,
    this.title,
    this.text,
    this.footer,
    this.linkPagePath,
  );

  final String tag;
  final String title;
  final String text;
  final String footer;
  final String linkPagePath;
}
