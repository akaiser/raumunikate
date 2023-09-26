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

class ProjectsTheuerFirstSection extends OneColumnSection {
  const ProjectsTheuerFirstSection({
    super.backgroundColor = mainBackgroundColor,
    super.child = const ProjectsTheuerText(),
  });
}

class ProjectsTheuerSecondSection extends _Carousel {
  const ProjectsTheuerSecondSection();
}

class ProjectsTheuerSection extends TwoColumnsSection {
  const ProjectsTheuerSection({
    super.image = const _Carousel(),
    super.content = const ProjectsTheuerText(),
    super.backgroundColor = mainBackgroundColor,
    super.leftHasMoreFlex = true,
  });
}

class _Carousel extends StatelessWidget {
  const _Carousel();

  @override
  Widget build(BuildContext context) => CarouselPageView(
        activeIndicatorColor: raumTheuer,
        children: [
          Images.projectsTheuerStairs,
          Images.projectsTheuerFloor,
          if (context.isSxsBreakpoint) Images.projectsTheuerLiving,
        ].map(CoverImageBox.new).unmodifiable,
      );
}
