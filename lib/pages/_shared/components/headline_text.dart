import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText(this.text, {this.textColor});

  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    final isXsBreakpoint = breakpoint == Breakpoint.xs;
    final isXxlBreakpoint = breakpoint == Breakpoint.xxl;
    return Text(
      text,
      style: context.tt.title?.copyWith(
        color: textColor,
        fontSize:
            isXsBreakpoint
                ? 24
                : isXxlBreakpoint
                ? 40
                : 30,
      ),
    );
  }
}
