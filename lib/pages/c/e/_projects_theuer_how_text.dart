import 'package:raumunikate/pages/_shared/components/citation.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/c/e/_data.dart' as data;

class const ProjectsTheuerHowText({super.key}) extends Column {
  this
    : super(
        mainAxisAlignment: .spaceBetween,
        children: const [
          Flexible(child: FullTextSectionText(data.content)),
          Citation(citation: data.citation, signature: data.signature),
          SizedBox(),
        ],
      );
}
