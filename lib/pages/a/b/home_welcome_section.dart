import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/a/b/_home_welcome_info.dart';
import 'package:raumunikate/pages/base_section.dart';

const _xlInfoPadding = EdgeInsets.only(
  left: 100,
  top: navigationBarHeight + 100,
  right: 100,
);

const _mInfoPadding = EdgeInsets.only(
  left: 60,
  top: navigationBarHeight + 100,
  right: 60,
);

class HomeWelcomeSection extends StatelessWidget {
  const HomeWelcomeSection({super.key});

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
  Widget build(BuildContext context) => BaseSectionWithBackgroundColor(
        color: mainTODO_2,
        child: Row(
          children: [
            Flexible(
              flex: flexLeft,
              child: const SizedBox.expand(
                child: CoverImageBox(Images.homeWelcomeIna),
              ),
            ),
            Flexible(
              flex: flexRight,
              child: Padding(
                padding: infoPadding,
                child: const HomeWelcomeInfo(),
              ),
            ),
          ],
        ),
      );
}
