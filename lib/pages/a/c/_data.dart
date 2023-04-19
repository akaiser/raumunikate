// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/material.dart' show Color, Colors;
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';

const textColor = Colors.white;

const linkText = 'Erfahre mehr';

final slidesData = [
  SlideDataEntry(
    mainTODO_3,
    'Atmosphäre planen',
    'Sie sehen einen Einblick in meine Projekte. Im privaten und beruflichen Kontext bekommt Wohlfühlatmosphäre eine immer größere Bedeutung.',
    Routes.planPage,
  ),
  SlideDataEntry(
    mainTODO_1,
    'Projekte',
    'Sie erfahren die Phasen unserer Zusammenarbeit und meine methodische Herangehensweise.',
    Routes.projectsPage,
  ),
  SlideDataEntry(
    mainTODO_0,
    'Produkte',
    'Herzlich Willkommen im Zuhause der Atmosphäre! Hier erfahren Sie wer RAUMUNIKATE kreiert.',
    Routes.productsPage,
  ),
  SlideDataEntry(mainTODO_4, 'Portrait', 'TODO', Routes.portraitPage),
  SlideDataEntry(mainTODO_4, 'Inspiration', 'TODO', Routes.inspirationPage),
];

class SlideDataEntry {
  SlideDataEntry(
    this.backgroundColor,
    this.title,
    this.text,
    this.linkPagePath,
  );

  final Color backgroundColor;
  final String title;
  final String text;
  final String linkPagePath;
}
