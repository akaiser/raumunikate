import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/a/c/_home_content_slides.dart';

class HomeContentSection extends CoverImageBox {
  const HomeContentSection()
    : super(Images.waben0, child: const HomeContentSlides());
}
