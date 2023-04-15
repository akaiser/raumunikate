// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_legal/_contact.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';

class ImprintPage extends StatelessWidget {
  const ImprintPage({super.key});

  static const path = '/impressum';

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
        children: [
          SizedBox(height: 24),
          HeadlineText('Impressum'),
          SizedBox(height: 16),
          Text('''
Angaben gem. §5 des Telemediengesetz (TMG) in der Fassung des Gesetzes über rechtliche Rahmenbedingungen für den elektronischen Geschäftsverkehr.

Anbieter:
RAUMUNIKATE Einzelunternehmen

Vertretungsberechtigte Geschäftsführerin:'''),
          Contact(),
          Text('''
          
Steuernummer: 64306/24636
Konzept und Design: Ina Kaiser RAUMUNIKATE

Bildmaterial:
Alle eigenen Bilder und Bildmaterial aller genutzten Fremdquellen unterliegen dem Urheberrecht und dürfen weder genutzt, verändert oder kopiert werden.

Kleinunternehmer gemäß § 19 UStG
'''),
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
          SizedBox(height: 20),
          RichTextSection(
            children: [
              InlineText('Es gelten folgende Datenschutzrichtlinien: '),
              InlineText('Datenschutz', link: PrivacyPage.path),
              InlineText(' '),
            ],
          ),
          SizedBox(height: 20),
          Text('Erstellt in Kooperation mit Vera Hofmann – daataxx GmbH'),
        ],
      );
}
