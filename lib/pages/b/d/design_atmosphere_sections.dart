import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/d/_design_atmosphere_text.dart';

class DesignAtmosphereFirstSection extends OneColumnSection {
  const DesignAtmosphereFirstSection()
    : super(backgroundColor: raumCreme, child: const DesignAtmosphereText());
}

class DesignAtmosphereSecondSection extends ColoredBox {
  const DesignAtmosphereSecondSection()
    : super(color: raumCreme, child: const _DesignAtmosphereImage());
}

class DesignAtmosphereSection extends TwoColumnsSection {
  const DesignAtmosphereSection()
    : super(
        image: const _DesignAtmosphereImage(),
        content: const DesignAtmosphereText(),
        leftHasMoreFlex: true,
        backgroundColor: raumCreme,
      );
}

class _DesignAtmosphereImage extends StatelessWidget {
  const _DesignAtmosphereImage();

  @override
  Widget build(BuildContext context) => const Padding(
    padding: EdgeInsets.only(top: navigationBarHeight),
    child: FadeInAssetImage(Images.designAtmosphere, fit: BoxFit.contain),
  );
}
