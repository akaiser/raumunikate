import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/carousel_page_view.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/c/b/_data.dart' as data;
import 'package:raumunikate/pages/c/b/_projects_wolf_text.dart';

class ProjectsWolfFirstSection extends OneColumnSection {
  const ProjectsWolfFirstSection({
    super.backgroundColor = raumGreen,
    super.child = const ProjectsWolfText(),
  });
}

class ProjectsWolfSecondSection extends _Carousel {
  const ProjectsWolfSecondSection();
}

class ProjectsWolfSection extends TwoColumnsSection {
  const ProjectsWolfSection({
    super.image = const _Carousel(),
    super.content = const ProjectsWolfText(),
    super.backgroundColor = raumGreen,
    super.leftHasMoreFlex = true,
  });
}

class _Carousel extends StatelessWidget {
  const _Carousel();

  @override
  Widget build(BuildContext context) => CarouselPageView(
        activeIndicatorColor: Colors.amber,
        children: data.carouselData.map(CoverImageBox.new).unmodifiable,
      );
}
