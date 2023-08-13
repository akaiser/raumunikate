import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/b/_shared/design_slides.dart';
import 'package:raumunikate/pages/b/b/_data.dart' as data;

class DesignPhasesPartOneSlides extends DesignSlides {
  const DesignPhasesPartOneSlides()
      : super(
          leading: const Column(
            children: [
              HeadlineText(data.sectionTitle),
              SizedBox(height: 16),
              Text(data.sectionSubtitle),
            ],
          ),
          slidesData: data.slidesData,
        );
}
