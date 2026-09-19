import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/carousel_page_view.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/c/b/_projects_wolf_text.dart';

class const ProjectsWolfFirstSection({super.key}) extends OneColumnSection {
  this : super(backgroundColor: raumGreen, child: const ProjectsWolfText());
}

class const ProjectsWolfSecondSection({super.key}) extends _Carousel;

class const ProjectsWolfSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const _Carousel(),
        content: const ProjectsWolfText(),
        backgroundColor: raumGreen,
        leftHasMoreFlex: true,
      );
}

class const _Carousel({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CarouselPageView(
    Colors.amber,
    children: [
      Images.projectsWolfChill,
      // TODO(albert): schlechte quali
      Images.projectsWolfOffice,
      // TODO(albert): schlechte quali
      if (context.isSxsBreakpoint) Images.projectsWolfConference,
    ].map(CoverImageBox.new).unmodifiable,
  );
}
