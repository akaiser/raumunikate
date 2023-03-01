import 'package:flutter/material.dart';
import 'package:raumunikate/pages/a/a/home_intro_section.dart';
import 'package:raumunikate/pages/a/b/home_welcome_section.dart';
import 'package:raumunikate/pages/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String path = '/';

  @override
  Widget build(BuildContext context) => const BasePage(
        children: [
          HomeIntroSection(),
          HomeWelcomeSection(),
        ],
      );
}
