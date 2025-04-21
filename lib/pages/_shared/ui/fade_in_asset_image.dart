import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInAssetImage extends StatelessWidget {
  const FadeInAssetImage(this.image, {this.fit, this.child, super.key});

  final String image;
  final BoxFit? fit;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final _child = child;
    final fadeInImage = FadeInImage(
      fit: fit,
      image: AssetImage(image),
      placeholder: MemoryImage(kTransparentImage),
      fadeInDuration: const Duration(milliseconds: pageTransitionInMillis),
    );

    return _child == null
        ? fadeInImage
        : Stack(fit: StackFit.expand, children: [fadeInImage, _child]);
  }
}
