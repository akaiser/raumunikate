import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/page_intro_text.dart';
import 'package:raumunikate/pages/base_section.dart';

abstract class BaseIntroSection extends StatelessWidget {
  const BaseIntroSection({
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) => BaseSectionWithBackgroundImage(
        image: image,
        child: Center(child: PageIntroText(text)),
      );
}
