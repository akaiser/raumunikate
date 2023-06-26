import 'package:flutter/rendering.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';

class CoverImageBox extends FadeInAssetImage {
  const CoverImageBox(super.image, {super.child}) : super(fit: BoxFit.cover);
}
