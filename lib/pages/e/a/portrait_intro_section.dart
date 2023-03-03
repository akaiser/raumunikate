import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/base_section.dart';

class PortraitIntroSection extends StatelessWidget {
  const PortraitIntroSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundColor: Colors.cyan,
        isFirstSection: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: navigationBarHeight),
            Text('PORTRAIT'),
          ],
        ),
      );
}
