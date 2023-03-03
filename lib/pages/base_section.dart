import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';

class BaseSection extends StatelessWidget {
  const BaseSection({
    this.backgroundColor,
    this.backgroundAsset,
    this.child,
    super.key,
  });

  final Color? backgroundColor;
  final String? backgroundAsset;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final _backgroundColor = backgroundColor;
    if (_backgroundColor != null) {
      return ColoredBox(color: _backgroundColor, child: child);
    }

    final _backgroundAsset = backgroundAsset;
    if (_backgroundAsset != null) {
      return CoverImageBox(_backgroundAsset, child: child);
    }

    throw Exception('This must not happen!');
  }
}
