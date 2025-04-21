import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/b/_shared/design_colors_section.dart';
import 'package:raumunikate/pages/b/g/_data.dart' as data;

class DesignNaturalFullSection extends DesignNaturalJustTextSection {
  const DesignNaturalFullSection({super.key})
    : super(trailing: const Row(children: [_FirstImage(), _SecondImage()]));
}

class DesignNaturalJustTextSection extends StatelessWidget {
  const DesignNaturalJustTextSection({super.key, this.trailing});

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final _trailing = trailing;
    return DesignColorsSection(
      children: [
        Text(data.title, style: context.tt.label),
        const Gap(20),
        const Text(data.content),
        const Gap(20),
        if (_trailing != null) _trailing,
      ],
    );
  }
}

class DesignNaturalJustFirstImageSection extends DesignColorsSection {
  const DesignNaturalJustFirstImageSection({super.key})
    : super(children: const [_FirstImage()]);
}

class DesignNaturalJustSecondImageSection extends DesignColorsSection {
  const DesignNaturalJustSecondImageSection({super.key})
    : super(children: const [_SecondImage()]);
}

class _FirstImage extends Expanded {
  const _FirstImage()
    : super(child: const FadeInAssetImage(Images.designNaturalFirst));
}

class _SecondImage extends Expanded {
  const _SecondImage()
    : super(child: const FadeInAssetImage(Images.designNaturalSecond));
}
