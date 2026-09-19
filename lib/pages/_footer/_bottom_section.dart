import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_legal.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class const BottomSection({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveLayout(
    s: (_) => const Row(
      crossAxisAlignment: .start,
      spacing: 26,
      children: [
        Expanded(child: CopyrightText()),
        _Legal(),
      ],
    ),
    xs: (_) => const Column(
      crossAxisAlignment: .start,
      children: [_Legal(), CopyrightText()],
    ),
  );
}

class const _Legal() extends Row {
  this
    : super(
        spacing: 26,
        children: const [ImprintTextLink(), TermsTextLink(), PrivacyTextLink()],
      );
}
