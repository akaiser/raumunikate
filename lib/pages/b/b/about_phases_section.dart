import 'package:flutter/material.dart';
import 'package:raumunikate/pages/base_section.dart';

class AboutPhasesSection extends StatelessWidget {
  const AboutPhasesSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseSection(
        backgroundColor: Colors.cyan,
        child: Center(child: Text('AboutPhasesSection')),
      );
}
