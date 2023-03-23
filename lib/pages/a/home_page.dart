import 'package:flutter/material.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/a/home_intro_section.dart';
import 'package:raumunikate/pages/a/b/home_welcome_section.dart';
import 'package:raumunikate/pages/a/c/home_contents_section.dart';
import 'package:raumunikate/pages/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String path = '/';

  @override
  Widget build(BuildContext context) => BasePage(
        children: [
          const HomeIntroSection(),
          if (context.isSxsBreakpoint) ...const [
            HomeWelcomeFirstSection(),
            HomeWelcomeSecondSection(),
          ] else
            const HomeWelcomeSingleSection(),
          const HomeContentsSection(),
        ],
      );
}
