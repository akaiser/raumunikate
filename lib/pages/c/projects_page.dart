import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/c/a/projects_intro_section.dart';

class ProjectsPage extends BaseSlidePage {
  const ProjectsPage() : super(children: const [ProjectsIntroSection()]);

  static const path = '/projekte';
}
