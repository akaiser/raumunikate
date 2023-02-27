import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class BaseSection extends StatelessWidget {
  const BaseSection({
    this.backgroundColor,
    this.backgroundAsset,
    required this.child,
    super.key,
  });

  final Color? backgroundColor;
  final String? backgroundAsset;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final _backgroundAsset = backgroundAsset;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor?.withOpacity(0.5),
        image: _backgroundAsset != null
            ? DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(_backgroundAsset),
              )
            : null,
      ),
      child: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: child,
      ),
    );
  }
}
