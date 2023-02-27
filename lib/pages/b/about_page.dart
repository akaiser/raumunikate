import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/b/a/about_intro_section.dart';
import 'package:raumunikate/pages/b/b/about_phases_section.dart';
import 'package:raumunikate/pages/base_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const path = '/about';

  @override
  Widget build(BuildContext context) => const BasePage(
        children: [
          AboutIntroSection(),
          AboutPhasesSection(),
        ],
      );
}
