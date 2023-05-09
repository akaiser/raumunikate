import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_data.dart' as data;
import 'package:raumunikate/pages/base_intro_section.dart';

class InspirationIntroSection extends StatelessWidget {
  const InspirationIntroSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseIntroSection(
        data.inspirationIntroText,
        image: Images.inspirationIntro,
      );
}
