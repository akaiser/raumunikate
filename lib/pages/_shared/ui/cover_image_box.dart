import 'package:flutter/widgets.dart';

class CoverImageBox extends StatelessWidget {
  const CoverImageBox(
    this.image, {
    this.colorFilter,
    this.child,
    super.key,
  });

  final String image;

  // TODO(albert): remove this
  final ColorFilter? colorFilter;
  final Widget? child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
            colorFilter: colorFilter,
          ),
        ),
        child: child,
      );
}
