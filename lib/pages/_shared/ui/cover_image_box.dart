import 'package:flutter/widgets.dart';

class CoverImageBox extends StatelessWidget {
  const CoverImageBox(
    this.asset, {
    this.colorFilter,
    this.child,
    super.key,
  });

  final String asset;

  // TODO(albert): remove this
  final ColorFilter? colorFilter;
  final Widget? child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(asset),
            colorFilter: colorFilter,
          ),
        ),
        child: child,
      );
}
