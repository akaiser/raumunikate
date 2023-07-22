import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/b/c/_plan_phases_part_two_slides.dart';

class PlanPhasesPartTwoSection extends CoverImageBox {
  const PlanPhasesPartTwoSection()
      : super(
          Images.waben1,
          child: const PlanPhasesPartTwoSlides(),
        );
}
