import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/citation.dart';
import 'package:raumunikate/pages/base_section.dart';
import 'package:raumunikate/pages/d/e/_data.dart' as data;

class ProductsCitationSection extends StatelessWidget {
  const ProductsCitationSection();

  @override
  Widget build(BuildContext context) => const BaseSectionWithBackgroundImage(
        Images.productsWallLamp,
        child: Padding(
          padding: EdgeInsets.only(left: 40, top: 40, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(),
              SizedBox(),
              Citation(citation: data.citation, signature: data.signature),
              SizedBox(),
            ],
          ),
        ),
      );
}
