import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/f/_plan_style_text.dart';

class PlanStyleFirstSection extends OneColumnSection {
  const PlanStyleFirstSection()
      : super(
          backgroundColor: mainTODO_6,
          child: const PlanStyleText(),
        );
}

class PlanStyleSecondSection extends ColoredBox {
  const PlanStyleSecondSection()
      : super(
          color: mainTODO_6,
          child: const _PlanStyleImage(),
        );
}

class PlanStyleSection extends TwoColumnsSection {
  const PlanStyleSection()
      : super(
          image: const _PlanStyleImage(),
          content: const PlanStyleText(),
          leftHasMoreFlex: true,
          backgroundColor: mainTODO_6,
        );
}

class _PlanStyleImage extends StatelessWidget {
  const _PlanStyleImage();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(top: navigationBarHeight),
        child: FadeInAssetImage(
          Images.planStyle,
          fit: BoxFit.contain,
        ),
      );
}
