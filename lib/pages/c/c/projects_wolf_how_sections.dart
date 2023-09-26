import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/c/c/_projects_wolf_how_text.dart';

class ProjectsWolfHowFirstSection extends OneColumnSection {
  const ProjectsWolfHowFirstSection({
    super.backgroundColor = raumWolf,
    super.child = const ProjectsWolfHowText(),
  });
}

class ProjectsWolfHowSecondSection extends OneColumnSection {
  const ProjectsWolfHowSecondSection({
    // TODO(albert): schlechte quali
    super.backgroundImage = Images.projectsWolfConference,
  });
}

class ProjectsWolfHowSection extends TwoColumnsSection {
  const ProjectsWolfHowSection({
    // TODO(albert): schlechte quali
    super.image = const CoverImageBox(Images.projectsWolfConference),
    super.content = const ProjectsWolfHowText(),
    super.leftHasMoreFlex = true,
    super.flipWidgets = true,
    super.backgroundColor = raumWolf,
  });
}
