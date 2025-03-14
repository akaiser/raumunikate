import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/_legal.dart';
import 'package:raumunikate/pages/_legal/imprint_page.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_legal/terms_page.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

import '../../widget_tester_ext.dart';

void main() {
  group('$CopyrightText', () {
    testWidgets('has text', (tester) async {
      await tester.render(const CopyrightText());

      expect(
        find.text('© 2025 Raumunikate. All rights reserved.'),
        findsOneWidget,
      );
    });

    testWidgets('has current year', (tester) async {
      await tester.render(const CopyrightText());

      expect(
        tester.find<CopyrightText>().data,
        contains('${DateTime.now().year}'),
      );
    });
  });

  group('$ImprintTextLink', () {
    testWidgets('is a $TextLink', (tester) async {
      await tester.render(const ImprintTextLink());

      expect(tester.find<ImprintTextLink>(), isA<TextLink>());
    });

    testWidgets('has text', (tester) async {
      await tester.render(const ImprintTextLink());

      expect(find.text('Impressum'), findsOneWidget);
    });

    testWidgets('has path to $ImprintPage', (tester) async {
      await tester.render(const ImprintTextLink());

      expect(tester.find<ImprintTextLink>().url, ImprintPage.path);
    });
  });

  group('$TermsTextLink', () {
    testWidgets('is a $TextLink', (tester) async {
      await tester.render(const TermsTextLink());

      expect(tester.find<TermsTextLink>(), isA<TextLink>());
    });

    testWidgets('has text', (tester) async {
      await tester.render(const TermsTextLink());

      expect(find.text('AGB'), findsOneWidget);
    });

    testWidgets('has path to $TermsPage', (tester) async {
      await tester.render(const TermsTextLink());

      expect(tester.find<TermsTextLink>().url, TermsPage.path);
    });
  });

  group('$PrivacyTextLink', () {
    testWidgets('is a $TextLink', (tester) async {
      await tester.render(const PrivacyTextLink());

      expect(tester.find<PrivacyTextLink>(), isA<TextLink>());
    });

    testWidgets('has expected text', (tester) async {
      await tester.render(const PrivacyTextLink());

      expect(find.text('Datenschutz'), findsOneWidget);
    });

    testWidgets('has path to $PrivacyPage', (tester) async {
      await tester.render(const PrivacyTextLink());

      expect(tester.find<PrivacyTextLink>().url, PrivacyPage.path);
    });
  });
}
