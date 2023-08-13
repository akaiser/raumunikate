import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/b/_shared/design_colors_section.dart';
import 'package:raumunikate/pages/b/i/_data.dart' as data;

class DesignElegantFullSection extends DesignElegantJustTextSection {
  const DesignElegantFullSection({super.key})
      : super(
          trailing: const Row(children: [_FirstImage(), _SecondImage()]),
        );
}

class DesignElegantJustTextSection extends StatelessWidget {
  const DesignElegantJustTextSection({super.key, this.trailing});

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final _trailing = trailing;
    return DesignColorsSection(
      children: [
        Text(
          data.elegantTitle,
          style: context.tt.label,
        ),
        const SizedBox(height: 20),
        const Text(data.elegantText),
        const SizedBox(height: 20),
        if (_trailing != null) _trailing,
      ],
    );
  }
}

class DesignElegantJustFirstImageSection extends DesignColorsSection {
  const DesignElegantJustFirstImageSection({super.key})
      : super(children: const [_FirstImage()]);
}

class DesignElegantJustSecondImageSection extends DesignColorsSection {
  const DesignElegantJustSecondImageSection({super.key})
      : super(children: const [_SecondImage()]);
}

class _FirstImage extends Expanded {
  const _FirstImage()
      : super(child: const FadeInAssetImage(Images.designElegantFirst));
}

class _SecondImage extends Expanded {
  const _SecondImage()
      : super(child: const FadeInAssetImage(Images.designElegantSecond));
}
