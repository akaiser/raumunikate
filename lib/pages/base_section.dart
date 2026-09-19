import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';

class const BaseSectionWithBackgroundColor({
  required super.color,
  super.key,
  super.child,
}) extends ColoredBox;

class const BaseSectionWithBackgroundImage(
  super._image, {
  super.key,
  super.child,
}) extends CoverImageBox;

class const BaseSectionWithBackground({
  required final String? backgroundImage,
  required final Color? backgroundColor,
  required final Widget? child,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final backgroundImage = this.backgroundImage;
    if (backgroundImage != null) {
      return BaseSectionWithBackgroundImage(backgroundImage, child: child);
    }

    final backgroundColor = this.backgroundColor;
    if (backgroundColor != null) {
      return BaseSectionWithBackgroundColor(
        color: backgroundColor,
        child: child,
      );
    }

    throw Exception('This might happen!');
  }
}
