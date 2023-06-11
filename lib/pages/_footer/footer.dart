import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_bottom_section.dart';
import 'package:raumunikate/pages/_footer/_connect_column.dart';
import 'package:raumunikate/pages/_footer/_contact_column.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class Footer extends StatelessWidget {
  const Footer();

  @override
  Widget build(BuildContext context) => DefaultTextStyle(
        style: context.dts.copyWith(fontSize: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveLayout(
              m: (_) => const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ConnectColumn(), ContactColumn()],
              ),
              xs: (_) => const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConnectColumn(),
                  SizedBox(height: 32),
                  ContactColumn(crossAxisAlignment: CrossAxisAlignment.start),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const BottomSection(),
            const SizedBox(height: 16),
          ],
        ),
      );
}
