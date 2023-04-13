import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyTextStyle = context.tt.body;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ina Kaiser\nStraußstraße 27\n89518 Heidenheim',
          style: bodyTextStyle,
        ),
        const SizedBox(height: 20),
        Text('Tel.: +49 152 54249392', style: bodyTextStyle),
        Text('E-Mail: kontakt@raumunikate.de', style: bodyTextStyle),
        Text('Web: https://www.raumunikate.de', style: bodyTextStyle),
      ],
    );
  }
}
