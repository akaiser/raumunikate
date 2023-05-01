import 'package:flutter/widgets.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/pages/_data.dart' as data;
import 'package:raumunikate/pages/base_intro_section.dart';

class ProjectsIntroSection extends StatelessWidget {
  const ProjectsIntroSection({super.key});

  @override
  Widget build(BuildContext context) => const BaseIntroSection(
        data.projectsIntroText,
        asset: Assets.projectsIntro,
      );
}
