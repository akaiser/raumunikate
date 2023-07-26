import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/d/_plan_atmosphere_text.dart';

class PlanAtmosphereFirstSection extends OneColumnSection {
  const PlanAtmosphereFirstSection()
      : super(
          backgroundColor: mainTODO_1,
          child: const PlanAtmosphereText(),
        );
}

class PlanAtmosphereSecondSection extends ColoredBox {
  const PlanAtmosphereSecondSection()
      : super(
          color: mainTODO_1,
          child: const _PlanAtmosphereImage(),
        );
}

class PlanAtmosphereSection extends TwoColumnsSection {
  const PlanAtmosphereSection()
      : super(
          image: const _PlanAtmosphereImage(),
          content: const PlanAtmosphereText(),
          leftHasMoreFlex: true,
          backgroundColor: mainTODO_1,
        );
}

class _PlanAtmosphereImage extends StatelessWidget {
  const _PlanAtmosphereImage();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(top: navigationBarHeight),
        child: FadeInAssetImage(
          Images.planAtmosphere,
          fit: BoxFit.contain,
        ),
      );
}
