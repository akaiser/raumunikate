import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/c/c/_projects_wolf_how_text.dart';

class const ProjectsWolfHowTextOnlySection({super.key})
    extends OneColumnSection {
  this : super(backgroundColor: raumWolf, child: const ProjectsWolfHowText());
}

class const ProjectsWolfHowSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        // TODO(albert): schlechte quali
        image: const CoverImageBox(Images.projectsWolfConference),
        content: const ProjectsWolfHowText(),
        leftHasMoreFlex: true,
        flipWidgets: true,
        backgroundColor: raumWolf,
      );
}
