import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_text.dart';
import 'package:raumunikate/pages/a/a/_data.dart' as data;
import 'package:raumunikate/pages/base_section.dart';

class HomeIntroSection extends StatelessWidget {
  const HomeIntroSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundAsset: Assets.homeIntroDimmed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: navigationBarHeightExpanded),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ResponsiveText(
                data.introText,
                fontSizes: const [72, 56, 48, 32],
                style: context.tt.headline?.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      );
}
