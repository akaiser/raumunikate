import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/a/a/home_intro_section.dart';
import 'package:raumunikate/pages/a/b/_data.dart' as home_welcome_data;
import 'package:raumunikate/pages/a/b/home_welcome_sections.dart';
import 'package:raumunikate/pages/a/c/home_content_section.dart';
import 'package:raumunikate/pages/a/d/home_image_section.dart';
import 'package:raumunikate/pages/a/e/home_referrals_section.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = <Type>{
  HomeIntroSection,
  HomeWelcomeSection,
  HomeContentSection,
  HomeImageSection,
  HomeReferralsSection,
  Footer,
};

void main() {
  testWidgets('ensures to be on $HomePage', (tester) async {
    final entry = navData[0];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);
  });

  testWidgets('cycles through all sections of $HomePage', (tester) async {
    await tester.pumpApp();

    for (final sectionType in _sectionTypes) {
      if (_sectionTypes.first != sectionType) {
        await tester.dragPageView();
      }
      tester.expectType(sectionType, _sectionTypes);
    }
  });

  // TODO(albert): finish this...
  // testWidgets('cycles through all sections and slides', (tester) async {
  //   await tester.pumpApp();
  //
  //   tester.expectType(HomeIntroSection, _sectionTypes);
  //
  //   await tester.dragPageView();
  //   tester.expectType(HomeWelcomeSection, _sectionTypes);
  //
  //   await tester.dragPageView();
  //   tester.expectType(HomeContentSection, _sectionTypes);
  // expect(find.byKey(const Key('home-content-slide-card-0')), findsOneWidget);
  //
  //   await tester.dragPageView();
  //   tester.expectType(HomeImageSection, _sectionTypes);
  //
  //   await tester.dragPageView();
  //   tester.expectType(HomeReferralsSection, _sectionTypes);
  //
  //   await tester.dragPageView();
  //   tester.expectType(Footer, _sectionTypes);
  // });

  testWidgets('contact tap slides down to footer section', (tester) async {
    await tester.pumpApp();
    await tester.dragPageView();

    await tester.tap(find.text(home_welcome_data.cta));
    await tester.pumpAndSettle();

    tester.expectType(Footer, _sectionTypes);
  });
}
