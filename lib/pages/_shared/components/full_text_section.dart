import 'package:auto_size_text/auto_size_text.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class FullTextSection extends StatelessWidget {
  const FullTextSection({
    this.title,
    this.title2,
    required this.text,
    this.textColor,
    this.actionButton,
  });

  final String? title;
  final String? title2;
  final String text;
  final Color? textColor;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    final _title = title;
    final _title2 = title2;
    final _actionButton = actionButton;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_title != null) HeadlineText(_title, textColor: textColor),
        if (_title2 != null) HeadlineText(_title2, textColor: textColor),
        if (_title != null || _title2 != null) const _Spacer(),
        Flexible(child: FullTextSectionText(text, color: textColor)),
        if (_actionButton != null) ...[
          const _Spacer(),
          _actionButton,
        ],
      ],
    );
  }
}

class _Spacer extends StatelessWidget {
  const _Spacer();

  @override
  Widget build(BuildContext context) => context.breakpoint == Breakpoint.xs
      ? context.isShittySmallDevice
          ? const SizedBox(height: 10)
          : const SizedBox(height: 40)
      : const SizedBox(height: 60);
}

class FullTextSectionText extends StatelessWidget {
  const FullTextSectionText(this.text, {this.color, super.key});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) => AutoSizeText(
        text,
        style: context.dts.copyWith(fontSize: 20, color: color),
      );
}
