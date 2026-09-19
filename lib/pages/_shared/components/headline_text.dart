import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class const HeadlineText(
  final String _text, {
  final Color? _textColor,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(
    _text,
    style: context.tt.title?.copyWith(
      color: _textColor,
      fontSize: switch (context.breakpoint) {
        .xs => 24,
        .xxl => 40,
        _ => 30,
      },
    ),
  );
}
