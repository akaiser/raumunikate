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
    final isXsBreakpoint = context.breakpoint == Breakpoint.xs;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText(title),
        if (_title2 != null) HeadlineText(_title2),
        if (isXsBreakpoint)
          const SizedBox(height: 30)
        else
          const SizedBox(height: 60),
        ResponsiveText(
          text,
          style: context.tt.body,
          textAlign: TextAlign.start,
          fontSizes: const [20, 18, 18, 18, 18, 18],
        ),
        if (_actionButton != null) ...[
          if (isXsBreakpoint)
            const SizedBox(height: 40)
          else
            const SizedBox(height: 60),
          _actionButton,
        ],
      ],
    );
  }
}
