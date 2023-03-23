import 'package:flutter/material.dart';
import 'package:raumunikate/pages/_data.dart' as data;
import 'package:raumunikate/pages/base_intro_section.dart';

class InspirationIntroSection extends StatelessWidget {
  const InspirationIntroSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseIntroSection(
        data.inspirationIntroText,
        backgroundColor: Colors.teal,
      );
}
