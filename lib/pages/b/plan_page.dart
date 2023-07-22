import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/b/a/plan_intro_section.dart';
import 'package:raumunikate/pages/b/b/plan_phases_part_one_section.dart';
import 'package:raumunikate/pages/b/c/plan_phases_part_two_section.dart';
import 'package:raumunikate/pages/b/d/plan_atmosphere_sections.dart';
import 'package:raumunikate/pages/b/e/plan_aspects_section.dart';
import 'package:raumunikate/pages/b/f/plan_style_sections.dart';
import 'package:raumunikate/pages/base_slide_page.dart';

class PlanPage extends StatelessWidget {
  const PlanPage();

  static const path = '/planen';

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return BaseSlidePage(
      children: [
        const PlanIntroSection(),
        const PlanPhasesPartOneSection(),
        const PlanPhasesPartTwoSection(),
        if (isSxsBreakpoint) ...const [
          PlanAtmosphereFirstSection(),
          PlanAtmosphereSecondSection(),
        ] else
          const PlanAtmosphereSection(),
        const PlanAspectsSection(),
        if (isSxsBreakpoint) ...const [
          PlanStyleFirstSection(),
          PlanStyleSecondSection(),
        ] else
          const PlanStyleSection(),
        // TODO(albert): two slides are missing
      ],
    );
  }
}
