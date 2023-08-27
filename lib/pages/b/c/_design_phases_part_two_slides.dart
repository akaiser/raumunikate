import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/b/_shared/design_slides.dart';
import 'package:raumunikate/pages/b/c/_data.dart' as data;

class DesignPhasesPartTwoSlides extends DesignSlides {
  const DesignPhasesPartTwoSlides()
      : super(
          leading: const Column(
            children: [
              HeadlineText(data.title, textColor: mainBackgroundColor),
              SizedBox(height: 4),
              HeadlineText(
                data.subtitle,
                textColor: mainBackgroundColor,
              ),
            ],
          ),
          slidesData: data.slidesData,
        );
}
