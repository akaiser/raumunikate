import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/f/a/inspiration_intro_section.dart';
import 'package:raumunikate/pages/f/b/inspiration_welcome_sections.dart';
import 'package:raumunikate/pages/f/c/inspiration_content_section.dart';
import 'package:raumunikate/pages/f/d/inspiration_imagination_section.dart';
import 'package:raumunikate/pages/f/inspiration_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = [
  InspirationIntroSection,
  InspirationWelcomeSection,
  InspirationContentSection,
  InspirationImaginationSection,
  Footer,
];

void main() {
  testWidgets('ensures to be on $InspirationPage', (tester) async {
    final entry = navData[5];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(InspirationPage), findsOneWidget);
  });

  testWidgets('cycles through all sections', (tester) async {
    await tester.pumpApp();

    for (final sectionType in _sectionTypes) {
      if (_sectionTypes.first != sectionType) {
        await tester.dragPageView();
      }
      tester.expectType(sectionType, _sectionTypes);
    }
  });
}
