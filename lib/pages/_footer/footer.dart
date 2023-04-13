import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_bottom_section.dart';
import 'package:raumunikate/pages/_footer/_connect_column.dart';
import 'package:raumunikate/pages/_footer/_contact_column.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveLayout(
            m: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [ConnectColumn(), ContactColumn()],
            ),
            xs: (_) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ConnectColumn(),
                SizedBox(height: 32),
                ContactColumn(crossAxisAlignment: CrossAxisAlignment.start),
              ],
            ),
          ),
          const SizedBox(height: 32),
          const BottomSection(),
          const SizedBox(height: 16),
        ],
      );
}