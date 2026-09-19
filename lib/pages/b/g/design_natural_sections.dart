import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/b/_shared/design_colors_section.dart';
import 'package:raumunikate/pages/b/g/_data.dart' as data;

class const DesignNaturalFullSection({super.key})
    extends DesignNaturalJustTextSection {
  this : super(trailing: const Row(children: [_FirstImage(), _SecondImage()]));
}

class const DesignNaturalJustTextSection({final Widget? trailing, super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DesignColorsSection(
    children: [
      Text(data.title, style: context.tt.label),
      const Gap(20),
      const Text(data.content),
      const Gap(20),
      ?trailing,
    ],
  );
}

class const DesignNaturalJustFirstImageSection({super.key})
    extends DesignColorsSection {
  this : super(children: const [_FirstImage()]);
}

class const DesignNaturalJustSecondImageSection({super.key})
    extends DesignColorsSection {
  this : super(children: const [_SecondImage()]);
}

class const _FirstImage() extends Expanded {
  this : super(child: const FadeInAssetImage(Images.designNaturalFirst));
}

class const _SecondImage() extends Expanded {
  this : super(child: const FadeInAssetImage(Images.designNaturalSecond));
}
