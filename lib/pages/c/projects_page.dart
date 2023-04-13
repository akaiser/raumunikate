import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/c/a/projects_intro_section.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  static const path = '/projekte';

  @override
  Widget build(BuildContext context) => const BaseSlidePage(
        children: [
          ProjectsIntroSection(),
        ],
      );
}
