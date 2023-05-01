import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';

class BaseSectionWithBackgroundColor extends StatelessWidget {
  const BaseSectionWithBackgroundColor({
    required this.color,
    this.child,
    super.key,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) => ColoredBox(color: color, child: child);
}

class BaseSectionWithBackgroundAsset extends StatelessWidget {
  const BaseSectionWithBackgroundAsset({
    required this.asset,
    this.child,
    super.key,
  });

  final String asset;
  final Widget? child;

  @override
  Widget build(BuildContext context) => CoverImageBox(asset, child: child);
}
