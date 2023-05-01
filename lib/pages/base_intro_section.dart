import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/page_intro_text.dart';
import 'package:raumunikate/pages/base_section.dart';

class BaseIntroSection extends StatelessWidget {
  const BaseIntroSection(
    this.text, {
    required this.asset,
    super.key,
  });

  final String text;
  final String asset;

  @override
  Widget build(BuildContext context) => BaseSectionWithBackgroundAsset(
        asset: asset,
        child: Center(child: PageIntroText(text)),
      );
}
