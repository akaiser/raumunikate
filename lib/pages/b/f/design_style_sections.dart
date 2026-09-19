import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/f/_design_style_text.dart';

class const DesignStyleFirstSection({super.key}) extends OneColumnSection {
  this : super(backgroundColor: raumLila, child: const DesignStyleText());
}

class const DesignStyleSecondSection({super.key}) extends ColoredBox {
  this : super(color: raumLila, child: const _DesignStyleImage());
}

class const DesignStyleSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const _DesignStyleImage(),
        content: const DesignStyleText(),
        leftHasMoreFlex: true,
        backgroundColor: raumLila,
      );
}

class const _DesignStyleImage() extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Padding(
    padding: .only(top: navigationBarHeight),
    child: FadeInAssetImage(Images.designStyle, fit: .contain),
  );
}
