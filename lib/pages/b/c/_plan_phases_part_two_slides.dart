import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/b/_shared/plan_slides.dart';
import 'package:raumunikate/pages/b/c/_data.dart' as data;

class PlanPhasesPartTwoSlides extends PlanSlidesSlides {
  const PlanPhasesPartTwoSlides()
      : super(
          leading: const Column(
            children: [
              HeadlineText(data.sectionTitle, textColor: mainBackgroundColor),
              SizedBox(height: 4),
              HeadlineText(
                data.sectionSubtitle,
                textColor: mainBackgroundColor,
              ),
            ],
          ),
          slidesData: data.slidesData,
        );
}
