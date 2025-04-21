import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

class LinksColumn extends Column {
  const LinksColumn()
    : super(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TextLink(
            '@theobert_pot',
            url: 'https://www.instagram.com/theobert_pot/',
          ),
          TextLink(
            '@frau.kieselstein',
            url: 'https://www.instagram.com/frau.kieselstein/',
          ),
          TextLink(
            '@mehr.von.mia',
            url: 'https://www.instagram.com/mehr.von.mia/',
          ),
          TextLink(
            '@kersylovescolor',
            url: 'https://www.instagram.com/kersylovescolor/',
          ),
          TextLink(
            '@hoorayforthedetail',
            url: 'https://www.instagram.com/hoorayforthedetail/',
          ),
          TextLink('@herrklar', url: 'https://www.instagram.com/herrklar/'),
        ],
      );
}
