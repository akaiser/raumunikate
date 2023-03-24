// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/painting.dart' show Color;
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/b/plan_page.dart';
import 'package:raumunikate/pages/c/projects_page.dart';
import 'package:raumunikate/pages/d/products_page.dart';
import 'package:raumunikate/pages/e/portrait_page.dart';
import 'package:raumunikate/pages/f/inspiration_page.dart';

const linkText = 'Erfahre mehr';

final slidesData = [
  SlideDataEntry(
    mainTODO_3,
    'Atmosphäre planen',
    'Sie sehen einen Einblick in meine Projekte. Im privaten und beruflichen Kontext bekommt Wohlfühlatmosphäre eine immer größere Bedeutung.',
    PlanPage.path,
  ),
  SlideDataEntry(
    mainTODO_1,
    'Projekte',
    'Sie erfahren die Phasen unserer Zusammenarbeit und meine methodische Herangehensweise.',
    ProjectsPage.path,
  ),
  SlideDataEntry(
    mainTODO_0,
    'Produkte',
    'Herzlich Willkommen im Zuhause der Atmosphäre! Hier erfahren Sie wer RAUMUNIKATE kreiert.',
    ProductsPage.path,
  ),
  SlideDataEntry(mainTODO_4, 'Portrait', 'TODO', PortraitPage.path),
  SlideDataEntry(mainTODO_4, 'Inspiration', 'TODO', InspirationPage.path),
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
