import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/a/a/home_intro_section.dart';
import 'package:raumunikate/pages/a/b/home_welcome_sections.dart';
import 'package:raumunikate/pages/a/c/home_content_section.dart';
import 'package:raumunikate/pages/a/d/home_image_section.dart';
import 'package:raumunikate/pages/a/e/home_referrals_section.dart';
import 'package:raumunikate/pages/a/home_page.dart';
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

    expect(find.byType(HomePage), findsOneWidget);
  });

  testWidgets('cycles through all sections and slides', (tester) async {
    await tester.pumpApp();

    tester.expectType(HomeIntroSection, _sectionTypes);

    await tester.dragPageView();
    tester.expectType(HomeWelcomeSection, _sectionTypes);

    await tester.dragPageView();
    tester.expectType(HomeContentSection, _sectionTypes);
    expect(find.byKey(const Key('slide-card-0')), findsOneWidget);
    // TODO(albert): finish this...

    await tester.dragPageView();
    tester.expectType(HomeImageSection, _sectionTypes);

    await tester.dragPageView();
    tester.expectType(HomeReferralsSection, _sectionTypes);

    await tester.dragPageView();
    tester.expectType(Footer, _sectionTypes);
  });
}
