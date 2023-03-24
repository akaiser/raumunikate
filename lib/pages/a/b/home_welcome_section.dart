import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/a/b/_data.dart' as data;
import 'package:raumunikate/pages/base_section.dart';

class HomeWelcomeSingleSection extends StatelessWidget {
  const HomeWelcomeSingleSection({super.key});

  static const _xlInfoPadding = EdgeInsets.only(
    left: 100,
    top: navigationBarHeight + 100,
    right: 100,
  );

  static const _mInfoPadding = EdgeInsets.only(
    left: 60,
    top: navigationBarHeight + 100,
    right: 60,
  );

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        xl: (_) => const _TwoColumn(2, 3, _xlInfoPadding),
        m: (_) => const _TwoColumn(2, 3, _mInfoPadding),
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
      );
}

class HomeWelcomeFirstSection extends StatelessWidget {
  const HomeWelcomeFirstSection({super.key});

  static const _xSInfoPadding = EdgeInsets.only(
    left: 20,
    top: navigationBarHeight,
    right: 20,
  );

  static const _defaultInfoPadding = EdgeInsets.only(
    left: 100,
    top: navigationBarHeight + 60,
    right: 100,
  );

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    final isXsBreakpoint = breakpoint == Breakpoint.xs;
    return BaseSection(
      backgroundColor: mainTODO_2,
      child: Padding(
        padding: isXsBreakpoint ? _xSInfoPadding : _defaultInfoPadding,
        child: const _Info(),
      ),
    );
  }
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
  Widget build(BuildContext context) => FullTextSection(
        title: data.introTitle,
        title2: data.introTitle2,
        text: data.introContent,
        actionButton: ActionButton(data.introCta, onTap: () {}),
      );
}
