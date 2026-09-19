import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/c/e/_projects_theuer_how_text.dart';

class const ProjectsTheuerHowTextOnlySection({super.key})
    extends OneColumnSection {
  this
    : super(backgroundColor: raumTheuer, child: const ProjectsTheuerHowText());
}

class const ProjectsTheuerHowSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        // TODO(albert): schlechte quali
        image: const CoverImageBox(Images.projectsTheuerLiving),
        content: const ProjectsTheuerHowText(),
        leftHasMoreFlex: true,
        flipWidgets: true,
        backgroundColor: raumTheuer,
      );
}
