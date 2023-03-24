import 'package:flutter/material.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_text.dart';

class PageIntroText extends StatelessWidget {
  const PageIntroText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ResponsiveText(
          text,
          fontSizes: const [80, 60, 54, 50, 46, 40],
          style: context.tt.headline?.copyWith(color: Colors.white),
        ),
      );
}
