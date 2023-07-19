import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/f/c/_inspiration_content_slides.dart';

class InspirationContentSection extends CoverImageBox {
  const InspirationContentSection()
      : super(
          Images.waben0,
          child: const InspirationContentSlides(),
        );
}
