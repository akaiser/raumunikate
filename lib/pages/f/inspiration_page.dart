import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/f/a/inspiration_intro_section.dart';

class InspirationPage extends StatelessWidget {
  const InspirationPage({super.key});

  static const path = '/inspiration';

  @override
  Widget build(BuildContext context) => const BaseSlidePage(
        children: [
          InspirationIntroSection(),
        ],
      );
}
