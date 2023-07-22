import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/b/b/_plan_phases_part_one_slides.dart';

class PlanPhasesPartOneSection extends CoverImageBox {
  const PlanPhasesPartOneSection()
      : super(
          Images.waben0,
          child: const PlanPhasesPartOneSlides(),
        );
}
