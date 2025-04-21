import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class Citation extends StatelessWidget {
  const Citation({required this.citation, required this.signature});

  final String citation;
  final String signature;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      image: DecorationImage(
        alignment: Alignment.centerLeft,
        image: AssetImage(Images.chevron),
        scale: 2,
      ),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 100, top: 20),
          child: Text(
            citation,
            style: context.dts.copyWith(fontSize: 30, color: Colors.white),
          ),
        ),
        FullTextSectionText(signature),
      ],
    ),
  );
}
