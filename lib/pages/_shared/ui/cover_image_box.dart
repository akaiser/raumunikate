import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoverImageBox extends StatelessWidget {
  const CoverImageBox(this.image, {this.child});

  final String image;
  final Widget? child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: child,
      );
}
