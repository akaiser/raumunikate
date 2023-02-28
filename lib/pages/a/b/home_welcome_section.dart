import 'package:flutter/material.dart';
import 'package:raumunikate/pages/base_section.dart';

class HomeWelcomeSection extends StatelessWidget {
  const HomeWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseSection(
        backgroundColor: Colors.orange,
        child: Center(child: Text('HomeWelcomeSection')),
      );
}
