import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';

class BaseSection extends StatelessWidget {
  const BaseSection({
    this.backgroundColor,
    this.backgroundAsset,
    this.isFirstSection = false,
    this.child,
    super.key,
  });

  final Color? backgroundColor;
  final String? backgroundAsset;
  final bool isFirstSection;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final isFullWidthNavBar = context.isFullWidthNavBar;
    final content = SizedBox(
      height: context.screenHeight -
          (isFirstSection || (!isFirstSection && !isFullWidthNavBar)
              ? 0
              : navigationBarHeight),
      width: context.screenWidth,
      child: child,
    );

    final _backgroundColor = backgroundColor;
    if (_backgroundColor != null) {
      return ColoredBox(color: _backgroundColor, child: content);
    }

    final _backgroundAsset = backgroundAsset;
    if (_backgroundAsset != null) {
      return CoverImageBox(_backgroundAsset, child: content);
    }

    throw Exception('This must not happen!');
  }
}
