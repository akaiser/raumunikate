import 'package:raumunikate/pages/_shared/components/citation.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/c/e/_data.dart' as data;

class ProjectsTheuerHowText extends Column {
  const ProjectsTheuerHowText({
    super.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    super.children = const [
      Flexible(child: FullTextSectionText(data.content)),
      Citation(citation: data.citation, signature: data.signature),
      SizedBox(),
    ],
  });
}
