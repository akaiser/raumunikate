import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/b/c/_design_phases_part_two_slides.dart';

class DesignPhasesPartTwoSection extends CoverImageBox {
  const DesignPhasesPartTwoSection()
      : super(
          Images.waben1,
          child: const DesignPhasesPartTwoSlides(),
        );
}
