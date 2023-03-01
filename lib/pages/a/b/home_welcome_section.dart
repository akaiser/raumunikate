import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/base_section.dart';

class HomeWelcomeSection extends StatelessWidget {
  const HomeWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundColor: mainTODO_2,
        child: Row(
          children: [
            const Flexible(
              flex: 4,
              child: _Ina(),
            ),
            Flexible(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 130,
                  top: 120,
                  right: 120,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    //Text(data.introTitle, style: context.tt.title),
                    //Text(data.introTitle2, style: context.tt.title),
                    SizedBox(height: 80),
                    //Text(data.introContent, style: context.tt.body),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

class _Ina extends StatelessWidget {
  const _Ina();

  @override
  Widget build(BuildContext context) =>
      const CoverImageBox(Assets.homeWelcomeIna);
}
