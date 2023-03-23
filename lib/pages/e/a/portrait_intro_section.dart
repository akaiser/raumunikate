import 'package:flutter/material.dart';
import 'package:raumunikate/pages/_data.dart' as data;
import 'package:raumunikate/pages/base_intro_section.dart';

class PortraitIntroSection extends StatelessWidget {
  const PortraitIntroSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseIntroSection(
        data.portraitIntroText,
        backgroundColor: Colors.cyan,
      );
}
