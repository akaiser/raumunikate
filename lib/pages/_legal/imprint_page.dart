// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_legal/_contact.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';

class ImprintPage extends StatelessWidget {
  const ImprintPage();

  static const path = '/impressum';

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
        children: [
          newLine,
          HeadlineText('Impressum'),
          newLine,
          Text(
            'Angaben gem. §5 des Telemediengesetz (TMG) in der Fassung des Gesetzes über rechtliche Rahmenbedingungen für den elektronischen Geschäftsverkehr.',
          ),
          newLine,
          Text('Anbieter:'),
          Text('RAUMUNIKATE Einzelunternehmen'),
          newLine,
          Text('Vertretungsberechtigte Geschäftsführerin:'),
          Contact(),
          newLine,
          Text('Steuernummer: 64306/24636'),
          Text('Konzept und Design: Ina Kaiser'),
          newLine,
          Text('Bildmaterial:'),
          Text(
            'Alle eigenen Bilder und Bildmaterial aller genutzten Fremdquellen unterliegen dem Urheberrecht und dürfen weder genutzt, verändert oder kopiert werden.',
          ),
          newLine,
          Text('Kleinunternehmer gemäß § 19 UStG'),
          newLine,
          RichTextSection(
            children: [
              InlineText(
                'Plattform der EU-Kommission zur Online-Streitbeilegung: ',
              ),
              InlineText(
                'https://ec.europa.eu/consumers/odr',
                link: 'https://ec.europa.eu/consumers/odr/',
              ),
              InlineText(
                '. Der Verkäufer ist weder verpflichtet noch bereit, an einem Streitbeilegungsverfahren vor einer alternativen Streitbeilegungsstelle teilzunehmen.',
              ),
            ],
          ),
          newLine,
          RichTextSection(
            children: [
              InlineText('Es gelten folgende Datenschutzrichtlinien: '),
              InlineText('Datenschutz', link: PrivacyPage.path),
              InlineText(' '),
            ],
          ),
          newLine,
          Text('Erstellt in Kooperation mit Vera Hofmann – daataxx GmbH'),
        ],
      );
}
