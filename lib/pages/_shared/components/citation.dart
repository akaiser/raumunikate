import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class const Citation({
  required final String _citation,
  required final String _signature,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      image: DecorationImage(
        alignment: .centerLeft,
        image: AssetImage(Images.chevron),
        scale: 2,
      ),
    ),
    child: Column(
      children: [
        Padding(
          padding: const .only(left: 100, top: 20),
          child: Text(
            _citation,
            style: context.dts.copyWith(fontSize: 30, color: Colors.white),
          ),
        ),
        FullTextSectionText(_signature),
      ],
    ),
  );
}
