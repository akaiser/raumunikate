import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/page_intro_text.dart';
import 'package:raumunikate/pages/base_section.dart';

class BaseIntroSection extends StatelessWidget {
  const BaseIntroSection(
    this.text, {
    this.backgroundAsset,
    super.key,
  });

  final String text;

  final String? backgroundAsset;

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundAsset: backgroundAsset,
        child: Center(child: PageIntroText(text)),
      );
}
