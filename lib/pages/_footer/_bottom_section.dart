import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_legal.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class BottomSection extends StatelessWidget {
  const BottomSection();

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        s: (_) => const Row(
          children: [
            CopyrightText(),
            SizedBox(width: 26),
            ImprintTextLink(),
            SizedBox(width: 26),
            TermsTextLink(),
            SizedBox(width: 26),
            PrivacyTextLink(),
          ],
        ),
        xs: (_) => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImprintTextLink(),
            TermsTextLink(),
            PrivacyTextLink(),
            SizedBox(height: 12),
            CopyrightText(),
          ],
        ),
      );
}
