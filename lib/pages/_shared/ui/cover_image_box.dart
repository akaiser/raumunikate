import 'package:flutter/widgets.dart';

class CoverImageBox extends StatelessWidget {
  const CoverImageBox(
    this.asset, {
    this.child = const SizedBox.expand(),
    super.key,
  });

  final String asset;
  final Widget child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(asset),
          ),
        ),
        child: child,
      );
}
