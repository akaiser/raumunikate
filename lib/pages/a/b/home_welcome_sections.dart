import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/b/_home_welcome_info.dart';
import 'package:raumunikate/pages/base_section.dart';

const _xSInfoPadding = EdgeInsets.only(
  left: 20,
  top: navigationBarHeight,
  right: 20,
);

const _defaultInfoPadding = EdgeInsets.only(
  left: 100,
  top: navigationBarHeight + 60,
  right: 100,
);

class HomeWelcomeFirstSection extends StatelessWidget {
  const HomeWelcomeFirstSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSectionWithBackgroundColor(
        color: mainTODO_2,
        child: Padding(
          padding: context.breakpoint == Breakpoint.xs
              ? _xSInfoPadding
              : _defaultInfoPadding,
          child: const HomeWelcomeInfo(),
        ),
      );
}

class HomeWelcomeSecondSection extends StatelessWidget {
  const HomeWelcomeSecondSection({super.key});

  @override
  Widget build(BuildContext context) =>
      const BaseSectionWithBackgroundImage(image: Images.homeWelcomeIna);
}
