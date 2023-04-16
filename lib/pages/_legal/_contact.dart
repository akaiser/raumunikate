import 'package:flutter/widgets.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Ina Kaiser'),
          Text('Straußstraße 27'),
          Text('89518 Heidenheim'),
          Text(''),
          Text('Tel.: +49 152 54249392'),
          Text('E-Mail: kontakt@raumunikate.com'),
          Text('Web: https://www.raumunikate.com'),
        ],
      );
}
