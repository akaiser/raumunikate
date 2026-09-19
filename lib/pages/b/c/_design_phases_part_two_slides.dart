import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/b/_shared/design_slides.dart';
import 'package:raumunikate/pages/b/c/_data.dart' as data;

class const DesignPhasesPartTwoSlides({super.key}) extends DesignSlides {
  this
    : super(
        leading: const Column(
          spacing: 4,
          children: [
            HeadlineText(data.title, textColor: mainBackgroundColor),
            HeadlineText(data.subtitle, textColor: mainBackgroundColor),
          ],
        ),
        slidesData: data.slidesData,
      );
}
