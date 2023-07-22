import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/b/e/_plan_aspects_slides.dart';

class PlanAspectsSection extends CoverImageBox {
  const PlanAspectsSection()
      : super(
          Images.waben0,
          child: const PlanAspectsSlides(),
        );
}
