import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/c/e/_projects_theuer_how_text.dart';

class ProjectsTheuerHowFirstSection extends OneColumnSection {
  const ProjectsTheuerHowFirstSection({
    super.backgroundColor = raumTheuer,
    super.child = const ProjectsTheuerHowText(),
  });
}

class ProjectsTheuerHowSecondSection extends OneColumnSection {
  const ProjectsTheuerHowSecondSection({
    // TODO(albert): schlechte quali
    super.backgroundImage = Images.projectsTheuerLiving,
  });
}

class ProjectsTheuerHowSection extends TwoColumnsSection {
  const ProjectsTheuerHowSection({
    // TODO(albert): schlechte quali
    super.image = const CoverImageBox(Images.projectsTheuerLiving),
    super.content = const ProjectsTheuerHowText(),
    super.leftHasMoreFlex = true,
    super.flipWidgets = true,
    super.backgroundColor = raumTheuer,
  });
}
