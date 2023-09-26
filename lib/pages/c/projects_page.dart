import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/c/a/projects_intro_section.dart';
import 'package:raumunikate/pages/c/b/projects_wolf_sections.dart';
import 'package:raumunikate/pages/c/c/projects_wolf_how_sections.dart';
import 'package:raumunikate/pages/c/d/projects_theuer_sections.dart';
import 'package:raumunikate/pages/c/e/projects_theuer_how_sections.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage();

  static const path = '/projekte';

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return BaseSlidePage(
      children: [
        const ProjectsIntroSection(),
        if (isSxsBreakpoint) ...const [
          ProjectsWolfFirstSection(),
          ProjectsWolfSecondSection(),
          ProjectsWolfHowTextOnlySection(),
          ProjectsTheuerFirstSection(),
          ProjectsTheuerSecondSection(),
          ProjectsTheuerHowTextOnlySection(),
        ] else ...const [
          ProjectsWolfSection(),
          ProjectsWolfHowSection(),
          ProjectsTheuerSection(),
          ProjectsTheuerHowSection(),
        ],
      ],
    );
  }
}
