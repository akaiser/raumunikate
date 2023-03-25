import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_text.dart';

class FullTextSection extends StatelessWidget {
  const FullTextSection({
    required this.title,
    this.title2,
    required this.text,
    this.actionButton,
    super.key,
  });

  final String title;
  final String? title2;
  final String text;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    final _title2 = title2;
    final _actionButton = actionButton;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText(title),
        if (_title2 != null) HeadlineText(_title2),
        const _Spacer(),
        ResponsiveText(
          text,
          style: context.tt.body,
          textAlign: TextAlign.start,
          fontSizes: context.isShittySmallDevice
              ? const [20, 18, 18, 18, 18, 16]
              : const [20, 18, 18, 18, 18, 18],
        ),
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
          ? const SizedBox(height: 20)
          : const SizedBox(height: 40)
      : const SizedBox(height: 60);
}
