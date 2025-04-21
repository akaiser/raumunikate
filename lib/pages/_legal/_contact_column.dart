import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';

class ContactColumn extends Column {
  const ContactColumn()
    : super(
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
