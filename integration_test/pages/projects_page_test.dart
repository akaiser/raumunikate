import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/c/a/projects_intro_section.dart';
import 'package:raumunikate/pages/c/b/projects_wolf_sections.dart';
import 'package:raumunikate/pages/c/c/projects_wolf_how_sections.dart';
import 'package:raumunikate/pages/c/d/projects_theuer_sections.dart';
import 'package:raumunikate/pages/c/e/projects_theuer_how_sections.dart';
import 'package:raumunikate/pages/c/projects_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = [
  ProjectsIntroSection,
  ProjectsWolfSection,
  ProjectsWolfHowSection,
  ProjectsTheuerSection,
  ProjectsTheuerHowSection,
  Footer,
];

void main() {
  testWidgets('ensures to be on $ProjectsPage', (tester) async {
    final entry = navData[2];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(ProjectsPage), findsOneWidget);
  });

  testWidgets('cycles through all sections of $ProjectsPage', (tester) async {
    await tester.pumpApp();

    for (final sectionType in _sectionTypes) {
      if (_sectionTypes.first != sectionType) {
        await tester.dragPageView();
      }
      tester.expectType(sectionType, _sectionTypes);
    }
  });
}
