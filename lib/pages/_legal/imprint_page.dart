// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_legal/_contact.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';

class ImprintPage extends StatelessWidget {
  const ImprintPage({super.key});

  static const path = '/impressum';

  @override
  Widget build(BuildContext context) {
    final textTheme = context.tt;
    final bodyTextStyle = textTheme.body;
    return BaseScrollPage(
      children: [
        Text('Impressum', style: textTheme.title),
        const SizedBox(height: 20),
        Text(
          'Angaben gem. §5 des Telemediengesetz (TMG) in der Fassung des Gesetzes über rechtliche Rahmenbedingungen für den elektronischen Geschäftsverkehr.',
          style: bodyTextStyle,
        ),
        const SizedBox(height: 20),
        Text('Anbieter:\nRAUMUNIKATE Einzelunternehmen', style: bodyTextStyle),
        const SizedBox(height: 20),
        Text(
          'Vertretungsberechtigte Geschäftsführerin:',
          style: bodyTextStyle,
        ),
        const Contact(),
        const SizedBox(height: 20),
        Text('Steuernummer: 64306/24636', style: bodyTextStyle),
        const SizedBox(height: 20),
        Text(
          'Konzept und Design: Ina Kaiser RAUMUNIKATE',
          style: bodyTextStyle,
        ),
        const SizedBox(height: 20),
        Text(
          'Bildmaterial:\nAlle eigenen Bilder und Bildmaterial aller genutzten Fremdquellen unterliegen dem Urheberrecht und dürfen weder genutzt, verändert oder kopiert werden.',
          style: bodyTextStyle,
        ),
        const SizedBox(height: 20),
        Text('Kleinunternehmer gemäß § 19 UStG', style: bodyTextStyle),
        const SizedBox(height: 20),
        const RichTextSection(
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
        const SizedBox(height: 20),
        const RichTextSection(
          children: [
            InlineText('Es gelten folgende Datenschutzrichtlinien: '),
            InlineText('Datenschutz', link: PrivacyPage.path),
            InlineText(' '),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Erstellt in Kooperation mit Vera Hofmann – daataxx GmbH  ',
          style: bodyTextStyle,
        ),
      ],
    );
  }
}
