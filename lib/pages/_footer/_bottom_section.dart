import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_legal.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class BottomSection extends StatelessWidget {
  const BottomSection();

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
    s: (_) => const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CopyrightText()),
        Gap(26),
        _Legal(),
      ],
    ),
    xs: (_) => const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_Legal(), CopyrightText()],
    ),
  );
}

class _Legal extends Row {
  const _Legal()
    : super(
        children: const [
          ImprintTextLink(),
          Gap(26),
          TermsTextLink(),
          Gap(26),
          PrivacyTextLink(),
        ],
      );
}
