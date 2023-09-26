import 'package:flutter/material.dart' show Color, Colors;
import 'package:meta/meta.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';

const textColor = Colors.white;

const linkText = 'Erfahre mehr';

const slidesData = [
  SlideDataEntry(
    raumLila,
    'Atmosphäre gestalten',
    '''
Sie erfahren die Phasen unserer Zusammenarbeit und meine methodische Herangehensweise.''',
    Routes.designPage,
  ),
  SlideDataEntry(
    raumCreme,
    'Projekte',
    '''
Sie sehen einen Einblick in meine Projekte. Im privaten und beruflichen Kontext bekommt Wohlfühlatmosphäre eine immer größere Bedeutung.''',
    Routes.projectsPage,
  ),
  SlideDataEntry(
    raumGrau,
    'Produkte',
    '''
Jedes Produkt ein Unikat. Eine Homage an die Origami-Papierkunst, für die Ewigkeit gemacht aus Leichtmetal.''',
    Routes.productsPage,
  ),
  SlideDataEntry(
    raumGreen,
    'Portrait',
    '''
Herzlich Willkommen im Zuhause der Atmosphäre! Hier erfahren Sie wer RAUMUNIKATE kreiert.''',
    Routes.portraitPage,
  ),
  SlideDataEntry(
    raumBrown,
    'Blog',
    '''
Ort der Inspiration.
Sie erhalten Einblicke in mein persönliche Gedankenwelt und meine spannende Interviewreihe #raumfuerunikate.''',
    Routes.blogPage,
  ),
];

@immutable
class SlideDataEntry {
  const SlideDataEntry(
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
