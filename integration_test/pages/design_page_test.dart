import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/b/a/design_intro_section.dart';
import 'package:raumunikate/pages/b/b/design_phases_part_one_section.dart';
import 'package:raumunikate/pages/b/c/design_phases_part_two_section.dart';
import 'package:raumunikate/pages/b/d/design_atmosphere_sections.dart';
import 'package:raumunikate/pages/b/design_page.dart';
import 'package:raumunikate/pages/b/e/design_aspects_section.dart';
import 'package:raumunikate/pages/b/f/design_style_sections.dart';
import 'package:raumunikate/pages/b/g/design_natural_sections.dart';
import 'package:raumunikate/pages/b/i/design_elegant_sections.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = <Type>{
  DesignIntroSection,
  DesignPhasesPartOneSection,
  DesignPhasesPartTwoSection,
  DesignAtmosphereSection,
  DesignAspectsSection,
  DesignStyleSection,
  DesignNaturalFullSection,
  DesignElegantFullSection,
  Footer,
};

void main() {
  testWidgets('ensures to be on $DesignPage', (tester) async {
    final entry = navData[1];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(DesignPage), findsOneWidget);
  });

  testWidgets('cycles through all sections of $DesignPage', (tester) async {
    await tester.pumpApp();

    for (final sectionType in _sectionTypes) {
      if (_sectionTypes.first != sectionType) {
        await tester.dragPageView();
      }
      tester.expectType(sectionType, _sectionTypes);
    }
  });
}
