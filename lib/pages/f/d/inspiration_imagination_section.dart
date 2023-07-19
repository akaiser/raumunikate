import 'package:flutter/material.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/page_intro_text.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/base_section.dart';
import 'package:raumunikate/pages/f/d/_data.dart' as data;

class InspirationImaginationSection extends StatelessWidget {
  const InspirationImaginationSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseSectionWithBackgroundImage(
        Images.inspirationImagination,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage(Images.chevron),
              scale: 1.2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageIntroText(data.imaginationTitle),
              PageIntroText(data.imaginationTitle2),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: _Footer(),
              ),
            ],
          ),
        ),
      );
}

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) => Text(
        data.imaginationFooter,
        style: context.tt.label?.copyWith(
          color: Colors.white,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      );
}
