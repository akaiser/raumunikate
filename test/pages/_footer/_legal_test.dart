import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/_legal.dart';
import 'package:raumunikate/pages/_legal/imprint_page.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_legal/terms_page.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

import '../../widget_tester_ext.dart';

void main() {
  group('$Copyright', () {
    testWidgets('has text', (tester) async {
      await tester.render(const Copyright());

      expect(
        find.text('© 2023 Raumunikate. All rights reserved.'),
        findsOneWidget,
      );
    });

    testWidgets('has current year', (tester) async {
      await tester.render(const Copyright());

      expect(
        tester.findWidget<Copyright>().data,
        contains('${DateTime.now().year}'),
      );
    });
  });

  group('$Imprint', () {
    testWidgets('is a $TextLink', (tester) async {
      await tester.render(const Imprint());

      expect(tester.findWidget<Imprint>(), isA<TextLink>());
    });

    testWidgets('has text', (tester) async {
      await tester.render(const Imprint());

      expect(find.text('Impressum'), findsOneWidget);
    });

    testWidgets('has path to $ImprintPage', (tester) async {
      await tester.render(const Imprint());

      expect(tester.findWidget<Imprint>().url, ImprintPage.path);
    });
  });

  group('$Terms', () {
    testWidgets('is a $TextLink', (tester) async {
      await tester.render(const Terms());

      expect(tester.findWidget<Terms>(), isA<TextLink>());
    });

    testWidgets('has text', (tester) async {
      await tester.render(const Terms());

      expect(find.text('AGB'), findsOneWidget);
    });

    testWidgets('has path to $TermsPage', (tester) async {
      await tester.render(const Terms());

      expect(tester.findWidget<Terms>().url, TermsPage.path);
    });
  });

  group('$Privacy', () {
    testWidgets('is a $TextLink', (tester) async {
      await tester.render(const Privacy());

      expect(tester.findWidget<Privacy>(), isA<TextLink>());
    });

    testWidgets('has expected text', (tester) async {
      await tester.render(const Privacy());

      expect(find.text('Datenschutz'), findsOneWidget);
    });

    testWidgets('has path to $PrivacyPage', (tester) async {
      await tester.render(const Privacy());

      expect(tester.findWidget<Privacy>().url, PrivacyPage.path);
    });
  });
}
