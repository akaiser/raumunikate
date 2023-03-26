import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/a/a/home_intro_section.dart';
import 'package:raumunikate/pages/a/b/home_welcome_section.dart';
import 'package:raumunikate/pages/a/c/home_content_section.dart';
import 'package:raumunikate/pages/a/d/home_image_section.dart';
import 'package:raumunikate/pages/a/e/home_referrals_section.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/base_page.dart';
import 'package:raumunikate/pages/footer/footer.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = [
  HomeIntroSection,
  HomeWelcomeSection,
  HomeContentSection,
  HomeImageSection,
  HomeReferralsSection,
  Footer,
];

void main() {
  testWidgets('ensures to be on $HomePage', (tester) async {
    final entry = navData[0];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(entry.pageType), findsOneWidget);
  });

  testWidgets('cycles through all sections', (tester) async {
    await tester.pumpApp();

    tester.expectSectionType(HomeIntroSection);

    await tester.dragPageView();
    tester.expectSectionType(HomeWelcomeSection);

    await tester.dragPageView();
    tester.expectSectionType(HomeContentSection);

    await tester.dragPageView();
    tester.expectSectionType(HomeImageSection);

    await tester.dragPageView();
    tester.expectSectionType(HomeReferralsSection);

    await tester.dragPageView();
    tester.expectSectionType(Footer);
  });
}

extension on WidgetTester {
  Future<void> dragPageView() async {
    await drag(find.byKey(basePageViewKey), const Offset(0, -600));
    await pumpAndSettle();
  }

  void expectSectionType(Type type) {
    for (final sectionType in _sectionTypes) {
      expect(
        find.byType(sectionType),
        sectionType == type ? findsOneWidget : findsNothing,
      );
    }
  }
}