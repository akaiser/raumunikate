import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';

class const CoverImageBox(super._image, {super.child, super.key})
    extends FadeInAssetImage {
  this : super(fit: .cover);
}
