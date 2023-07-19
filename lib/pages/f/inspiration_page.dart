import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/f/a/inspiration_intro_section.dart';
import 'package:raumunikate/pages/f/b/inspiration_welcome_sections.dart';
import 'package:raumunikate/pages/f/c/inspiration_content_section.dart';
import 'package:raumunikate/pages/f/d/inspiration_imagination_section.dart';

class InspirationPage extends StatelessWidget {
  const InspirationPage();

  static const path = '/inspiration';

  @override
  Widget build(BuildContext context) => BaseSlidePage(
        children: [
          const InspirationIntroSection(),
          if (context.isSxsBreakpoint) ...const [
            InspirationWelcomeFirstSection(),
            InspirationWelcomeSecondSection(),
          ] else
            const InspirationWelcomeSection(),
          const InspirationContentSection(),
          const InspirationImaginationSection(),
        ],
      );
}
