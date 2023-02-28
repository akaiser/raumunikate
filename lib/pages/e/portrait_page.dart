import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/base_footer_page.dart';
import 'package:raumunikate/pages/e/a/portrait_intro_section.dart';

class PortraitPage extends StatelessWidget {
  const PortraitPage({super.key});

  static const path = '/portrait';

  @override
  Widget build(BuildContext context) => const BaseFooterPage(
        children: [
          PortraitIntroSection(),
        ],
      );
}
