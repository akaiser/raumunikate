import 'package:flutter/material.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/a/home_intro_section.dart';
import 'package:raumunikate/pages/a/b/home_welcome_section.dart';
import 'package:raumunikate/pages/a/b/home_welcome_sections.dart';
import 'package:raumunikate/pages/a/c/home_content_section.dart';
import 'package:raumunikate/pages/a/d/home_image_section.dart';
import 'package:raumunikate/pages/a/e/home_referrals_section.dart';
import 'package:raumunikate/pages/base_slide_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String path = '/';

  @override
  Widget build(BuildContext context) => BaseSlidePage(
        children: [
          const HomeIntroSection(),
          if (context.isSxsBreakpoint) ...const [
            HomeWelcomeFirstSection(),
            HomeWelcomeSecondSection(),
          ] else
            const HomeWelcomeSection(),
          const HomeContentSection(),
          const HomeImageSection(),
          const HomeReferralsSection(),
        ],
      );
}
