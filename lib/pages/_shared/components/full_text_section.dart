import 'package:auto_size_text/auto_size_text.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/nullable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class const FullTextSection(
  final String _text, {
  final String? _title,
  final String? _title2,
  final Color? _textColor,
  final Widget? _actionButton,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      ?_title.let((it) => HeadlineText(it, textColor: _textColor)),
      ?_title2.let((it) => HeadlineText(it, textColor: _textColor)),
      if (_title != null || _title2 != null) const _Spacer(),
      Flexible(child: FullTextSectionText(_text, color: _textColor)),
      ...?_actionButton.let((it) => [const _Spacer(), it]),
    ],
  );
}

class const _Spacer() extends StatelessWidget {
  @override
  Widget build(BuildContext context) => context.breakpoint == .xs
      ? Gap(context.isShittySmallDevice ? 10 : 40)
      : const Gap(60);
}

class const FullTextSectionText(
  final String _text, {
  final Color? _color,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => AutoSizeText(
    _text,
    style: context.dts.copyWith(fontSize: 20, color: _color),
  );
}
