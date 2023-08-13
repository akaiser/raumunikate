import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/b/a/design_intro_section.dart';
import 'package:raumunikate/pages/b/b/design_phases_part_one_section.dart';
import 'package:raumunikate/pages/b/c/design_phases_part_two_section.dart';
import 'package:raumunikate/pages/b/d/design_atmosphere_sections.dart';
import 'package:raumunikate/pages/b/e/design_aspects_section.dart';
import 'package:raumunikate/pages/b/f/design_style_sections.dart';
import 'package:raumunikate/pages/b/g/design_natural_sections.dart';
import 'package:raumunikate/pages/b/i/design_elegant_sections.dart';
import 'package:raumunikate/pages/base_slide_page.dart';

class DesignPage extends StatelessWidget {
  const DesignPage();

  static const path = '/gestalten';

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return BaseSlidePage(
      children: [
        const DesignIntroSection(),
        const DesignPhasesPartOneSection(),
        const DesignPhasesPartTwoSection(),
        if (isSxsBreakpoint) ...const [
          DesignAtmosphereFirstSection(),
          DesignAtmosphereSecondSection(),
        ] else
          const DesignAtmosphereSection(),
        const DesignAspectsSection(),
        if (isSxsBreakpoint) ...const [
          DesignStyleFirstSection(),
          DesignStyleSecondSection(),
        ] else
          const DesignStyleSection(),
        if (isSxsBreakpoint) ...const [
          DesignNaturalJustTextSection(),
          DesignNaturalJustFirstImageSection(),
          DesignNaturalJustSecondImageSection(),
        ] else
          const DesignNaturalFullSection(),
        if (isSxsBreakpoint) ...const [
          DesignElegantJustTextSection(),
          DesignElegantJustFirstImageSection(),
          DesignElegantJustSecondImageSection(),
        ] else
          const DesignElegantFullSection(),
      ],
    );
  }
}
