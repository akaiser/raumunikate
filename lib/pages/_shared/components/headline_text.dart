import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final isXxlBreakpoint = context.breakpoint == Breakpoint.xxl;
    return Text(
      text,
      style: context.tt.title?.copyWith(fontSize: isXxlBreakpoint ? 40 : 30),
    );
  }
}
