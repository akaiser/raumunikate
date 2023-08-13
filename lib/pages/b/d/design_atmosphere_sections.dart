import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/d/_design_atmosphere_text.dart';

class DesignAtmosphereFirstSection extends OneColumnSection {
  const DesignAtmosphereFirstSection()
      : super(
          backgroundColor: raumCreme,
          child: const PlanAtmosphereText(),
        );
}

class PlanAtmosphereSecondSection extends ColoredBox {
  const PlanAtmosphereSecondSection()
      : super(
          color: raumCreme,
          child: const _PlanAtmosphereImage(),
        );
}

class DesignAtmosphereSection extends TwoColumnsSection {
  const DesignAtmosphereSection()
      : super(
          image: const _PlanAtmosphereImage(),
          content: const PlanAtmosphereText(),
          leftHasMoreFlex: true,
          backgroundColor: raumCreme,
        );
}

class _PlanAtmosphereImage extends StatelessWidget {
  const _PlanAtmosphereImage();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(top: navigationBarHeight),
        child: FadeInAssetImage(
          Images.designAtmosphere,
          fit: BoxFit.contain,
        ),
      );
}
