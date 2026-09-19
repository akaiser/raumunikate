import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:transparent_image/transparent_image.dart';

class const FadeInAssetImage(
  final String _image, {
  final BoxFit? _fit,
  final Widget? _child,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fadeInImage = FadeInImage(
      fit: _fit,
      image: AssetImage(_image),
      placeholder: MemoryImage(kTransparentImage),
      fadeInDuration: const Duration(milliseconds: pageTransitionInMillis),
    );

    return _child != null
        ? Stack(fit: .expand, children: [fadeInImage, _child])
        : fadeInImage;
  }
}
