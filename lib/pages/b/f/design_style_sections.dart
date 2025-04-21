import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/f/_design_style_text.dart';

class DesignStyleFirstSection extends OneColumnSection {
  const DesignStyleFirstSection()
    : super(backgroundColor: raumLila, child: const DesignStyleText());
}

class DesignStyleSecondSection extends ColoredBox {
  const DesignStyleSecondSection()
    : super(color: raumLila, child: const _DesignStyleImage());
}

class DesignStyleSection extends TwoColumnsSection {
  const DesignStyleSection()
    : super(
        image: const _DesignStyleImage(),
        content: const DesignStyleText(),
        leftHasMoreFlex: true,
        backgroundColor: raumLila,
      );
}

class _DesignStyleImage extends StatelessWidget {
  const _DesignStyleImage();

  @override
  Widget build(BuildContext context) => const Padding(
    padding: EdgeInsets.only(top: navigationBarHeight),
    child: FadeInAssetImage(Images.designStyle, fit: BoxFit.contain),
  );
}
