import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/page_intro_text.dart';
import 'package:raumunikate/pages/base_section.dart';

class BaseIntroSection extends StatelessWidget {
  const BaseIntroSection(
    this.text, {
    this.backgroundAsset,
    this.backgroundColor,
    super.key,
  });

  final String text;

  // TODO(albert): only the backgroundAsset will be required later
  final String? backgroundAsset;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundAsset: backgroundAsset,
        backgroundColor: backgroundColor,
        child: Center(child: PageIntroText(text)),
      );
}
