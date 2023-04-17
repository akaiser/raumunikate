import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_legal/_shared.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Ina Kaiser'),
          Text('Straußstraße 27'),
          Text('89518 Heidenheim'),
          newLine,
          Text('Tel.: +49 152 54249392'),
          Text('E-Mail: kontakt@raumunikate.com'),
          Text('Web: https://www.raumunikate.com'),
        ],
      );
}
