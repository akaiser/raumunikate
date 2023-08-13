import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/e/a/portrait_intro_section.dart';
import 'package:raumunikate/pages/e/b/portrait_about_sections.dart';
import 'package:raumunikate/pages/e/c/portrait_product_sections.dart';
import 'package:raumunikate/pages/e/d/portrait_blog_sections.dart';

class PortraitPage extends StatelessWidget {
  const PortraitPage();

  static const path = '/portrait';

  @override
  Widget build(BuildContext context) => BaseSlidePage(
        children: [
          const PortraitIntroSection(),
          if (context.isSxsBreakpoint) ...const [
            PortraitAboutFirstSection(),
            PortraitAboutSecondSection(),
            PortraitProductFirstSection(),
            PortraitProductSecondSection(),
            PortraitBlogFirstSection(),
            PortraitBlogSecondSection(),
          ] else ...const [
            PortraitAboutSection(),
            PortraitProductSection(),
            PortraitBlogSection()
          ]
        ],
      );
}
