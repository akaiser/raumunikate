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

class BaseSectionWithBackgroundImage extends StatelessWidget {
  const BaseSectionWithBackgroundImage({
    required this.image,
    this.child,
    super.key,
  });

  final String image;
  final Widget? child;

  @override
  Widget build(BuildContext context) => CoverImageBox(image, child: child);
}
