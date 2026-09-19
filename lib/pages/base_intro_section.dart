import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/page_intro_text.dart';
import 'package:raumunikate/pages/base_section.dart';

abstract class const BaseIntroSection(
  final String _text, {
  required final String _image,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BaseSectionWithBackgroundImage(
    _image,
    child: Center(child: PageIntroText(_text)),
  );
}
