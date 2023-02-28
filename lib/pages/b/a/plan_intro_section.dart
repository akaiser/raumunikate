import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/base_section.dart';

class PlanIntroSection extends StatelessWidget {
  const PlanIntroSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundColor: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: navigationBarHeight),
            Text('ATMOSPHÄRE PLANEN'),
          ],
        ),
      );
}
