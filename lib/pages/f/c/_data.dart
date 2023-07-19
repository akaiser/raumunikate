// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/material.dart' show Color, Colors;
import 'package:meta/meta.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';

const textColor = Colors.black;

// TODO(albert): what to do with this crap?!
const slidesData = [
  SlideDataEntry(
    mainTODO_5,
    'TREND',
    'Farbtrends 2023',
    'Welche Farben haben das Jahr 2023 geprägt und wie hat sich das auf den Wohnstil ausgewirkt?',
    'By Ina Kaiser, 22 Dezember 2023',
    Routes.planPage,
  ),
  SlideDataEntry(
    mainTODO_5,
    'TIPPS',
    'Farbenfroh und munter',
    'Welche Farben haben das Jahr 2023 geprägt und wie hat sich das auf den Wohnstil ausgewirkt?',
    'By Ina Kaiser, 22 Dezember 2023',
    Routes.projectsPage,
  ),
  SlideDataEntry(
    mainTODO_5,
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
    this.backgroundColor,
    this.tag,
    this.title,
    this.text,
    this.footer,
    this.linkPagePath,
  );

  final Color backgroundColor;
  final String tag;
  final String title;
  final String text;
  final String footer;
  final String linkPagePath;
}
