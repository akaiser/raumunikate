import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/carousel_page_view.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/c/d/_projects_theuer_text.dart';

class const ProjectsTheuerFirstSection({super.key}) extends OneColumnSection {
  this
    : super(
        backgroundColor: mainBackgroundColor,
        child: const ProjectsTheuerText(),
      );
}

class const ProjectsTheuerSecondSection({super.key}) extends _Carousel;

class const ProjectsTheuerSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const _Carousel(),
        content: const ProjectsTheuerText(),
        backgroundColor: mainBackgroundColor,
        leftHasMoreFlex: true,
      );
}

class const _Carousel({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CarouselPageView(
    raumTheuer,
    children: [
      Images.projectsTheuerStairs,
      Images.projectsTheuerFloor,
      if (context.isSxsBreakpoint) Images.projectsTheuerLiving,
    ].map(CoverImageBox.new).unmodifiable,
  );
}
