import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';

class BaseSectionWithBackgroundColor extends ColoredBox {
  const BaseSectionWithBackgroundColor({required super.color, super.child});
}

class BaseSectionWithBackgroundImage extends CoverImageBox {
  const BaseSectionWithBackgroundImage(super.image, {super.child});
}

class BaseSectionWithBackground extends StatelessWidget {
  const BaseSectionWithBackground({
    required this.backgroundImage,
    required this.backgroundColor,
    required this.child,
  });

  final String? backgroundImage;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final _backgroundImage = backgroundImage;
    if (_backgroundImage != null) {
      return BaseSectionWithBackgroundImage(
        _backgroundImage,
        child: child,
      );
    }

    final _backgroundColor = backgroundColor;
    if (_backgroundColor != null) {
      return BaseSectionWithBackgroundColor(
        color: _backgroundColor,
        child: child,
      );
    }

    throw Exception('This might happen!');
  }
}
