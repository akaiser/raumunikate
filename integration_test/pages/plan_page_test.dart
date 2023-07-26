import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/b/a/plan_intro_section.dart';
import 'package:raumunikate/pages/b/b/plan_phases_part_one_section.dart';
import 'package:raumunikate/pages/b/c/plan_phases_part_two_section.dart';
import 'package:raumunikate/pages/b/d/plan_atmosphere_sections.dart';
import 'package:raumunikate/pages/b/e/plan_aspects_section.dart';
import 'package:raumunikate/pages/b/f/plan_style_sections.dart';
import 'package:raumunikate/pages/b/g/plan_natural_sections.dart';
import 'package:raumunikate/pages/b/i/plan_elegant_sections.dart';
import 'package:raumunikate/pages/b/plan_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = [
  PlanIntroSection,
  PlanPhasesPartOneSection,
  PlanPhasesPartTwoSection,
  PlanAtmosphereSection,
  PlanAspectsSection,
  PlanStyleSection,
  PlanNaturalFullSection,
  PlanElegantFullSection,
  Footer,
];

void main() {
  testWidgets('ensures to be on $PlanPage', (tester) async {
    final entry = navData[1];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(PlanPage), findsOneWidget);
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
