import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_legal.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class BottomSection extends StatelessWidget {
  const BottomSection();

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        s: (_) => const Row(
          children: [
            Copyright(),
            SizedBox(width: 26),
            Imprint(),
            SizedBox(width: 26),
            Terms(),
            SizedBox(width: 26),
            Privacy(),
          ],
        ),
        xs: (_) => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Imprint(),
            Terms(),
            Privacy(),
            SizedBox(height: 12),
            Copyright(),
          ],
        ),
      );
}
