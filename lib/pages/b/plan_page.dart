import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/b/a/plan_intro_section.dart';
import 'package:raumunikate/pages/base_page.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({super.key});

  static const path = '/planen';

  @override
  Widget build(BuildContext context) => const BasePage(
        children: [
          PlanIntroSection(),
        ],
      );
}
