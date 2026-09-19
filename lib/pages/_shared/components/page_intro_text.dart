import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_text.dart';

class const PageIntroText(final String _text, {super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const .symmetric(horizontal: 8),
    child: ResponsiveText(
      _text,
      fontSizes: const [80, 60, 54, 50, 46, 40],
      style: context.tt.headline?.copyWith(color: Colors.white),
    ),
  );
}
