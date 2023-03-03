import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_text.dart';
import 'package:raumunikate/pages/a/b/_data.dart' as data;
import 'package:raumunikate/pages/base_section.dart';

const _largeInfoPadding = EdgeInsets.only(left: 100, top: 100, right: 100);
const _mediumInfoPadding = EdgeInsets.only(left: 40, top: 40, right: 40);

class HomeWelcomeSingleSection extends StatelessWidget {
  const HomeWelcomeSingleSection({super.key});

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        large: (_) => const _TwoColumn(4, 5, _largeInfoPadding),
        medium: (_) => const _TwoColumn(2, 3, _mediumInfoPadding),
      );
}

class _TwoColumn extends StatelessWidget {
  const _TwoColumn(
    this.flexLeft,
    this.flexRight,
    this.infoPadding,
  );

  final int flexLeft;
  final int flexRight;
  final EdgeInsetsGeometry infoPadding;

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundColor: mainTODO_2,
        child: Padding(
          padding: const EdgeInsets.only(top: navigationBarHeight),
          child: Row(
            children: [
              Flexible(
                flex: flexLeft,
                child: const SizedBox.expand(
                  child: CoverImageBox(Assets.homeWelcomeIna),
                ),
              ),
              Flexible(
                flex: flexRight,
                child: Padding(
                  padding: infoPadding,
                  child: const _Info(),
                ),
              ),
            ],
          ),
        ),
      );
}

class HomeWelcomeFirstSection extends StatelessWidget {
  const HomeWelcomeFirstSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseSection(
        backgroundColor: mainTODO_2,
        child: Padding(
          padding: EdgeInsets.only(
            left: 40,
            top: navigationBarHeight,
            right: 40,
          ),
          child: _Info(),
        ),
      );
}

class HomeWelcomeSecondSection extends StatelessWidget {
  const HomeWelcomeSecondSection({super.key});

  @override
  Widget build(BuildContext context) =>
      const BaseSection(backgroundAsset: Assets.homeWelcomeIna);
}

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    final textTheme = context.tt;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(data.introTitle, style: textTheme.title),
        Text(data.introTitle2, style: textTheme.title),
        const SizedBox(height: 40),
        ResponsiveText(
          data.introContent,
          fontSizes: const [22, 20, 18, 18],
          style: textTheme.body,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
