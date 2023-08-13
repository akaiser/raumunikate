import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/b/e/_design_aspects_slides.dart';

class DesignAspectsSection extends CoverImageBox {
  const DesignAspectsSection()
      : super(
          Images.waben0,
          child: const DesignAspectsSlides(),
        );
}
