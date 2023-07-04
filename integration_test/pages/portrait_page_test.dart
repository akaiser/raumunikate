import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/e/a/portrait_intro_section.dart';
import 'package:raumunikate/pages/e/b/portrait_about_sections.dart';
import 'package:raumunikate/pages/e/c/portrait_passion_sections.dart';
import 'package:raumunikate/pages/e/portrait_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = [
  PortraitIntroSection,
  PortraitAboutSection,
  PortraitPassionSection,
  Footer,
];

void main() {
  testWidgets('ensures to be on $PortraitPage', (tester) async {
    final entry = navData[4];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(PortraitPage), findsOneWidget);
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
