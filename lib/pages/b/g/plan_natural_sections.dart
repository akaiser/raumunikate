import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/_shared/plan_colors_section.dart';
import 'package:raumunikate/pages/b/g/_data.dart' as data;

class PlanNaturalFullSection extends PlanNaturalJustTextSection {
  const PlanNaturalFullSection({super.key})
      : super(
          trailing: const Row(children: [_FirstImage(), _SecondImage()]),
        );
}

class PlanNaturalJustTextSection extends StatelessWidget {
  const PlanNaturalJustTextSection({super.key, this.trailing});

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final _trailing = trailing;
    return PlanColorsSection(
      children: [
        Text(
          data.naturalTitle,
          style: context.tt.label,
        ),
        const SizedBox(height: 20),
        const Text(data.naturalText),
        const SizedBox(height: 20),
        if (_trailing != null) _trailing,
      ],
    );
  }
}

class PlanNaturalJustFirstImageSection extends PlanColorsSection {
  const PlanNaturalJustFirstImageSection({super.key})
      : super(children: const [_FirstImage()]);
}

class PlanNaturalJustSecondImageSection extends PlanColorsSection {
  const PlanNaturalJustSecondImageSection({super.key})
      : super(children: const [_SecondImage()]);
}

class _FirstImage extends Expanded {
  const _FirstImage()
      : super(child: const FadeInAssetImage(Images.planNaturalFirst));
}

class _SecondImage extends Expanded {
  const _SecondImage()
      : super(child: const FadeInAssetImage(Images.planNaturalSecond));
}
