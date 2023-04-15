import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyTextStyle = context.tt.body;
    return DefaultTextStyle.merge(
      style: bodyTextStyle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('''
Ina Kaiser
Straußstraße 27
89518 Heidenheim'''),
          SizedBox(height: 20),
          Text('Tel.: +49 152 54249392'),
          Text('E-Mail: kontakt@raumunikate.de'),
          Text('Web: https://www.raumunikate.de'),
        ],
      ),
    );
  }
}
