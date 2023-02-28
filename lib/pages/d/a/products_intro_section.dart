import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/base_section.dart';

class ProductsIntroSection extends StatelessWidget {
  const ProductsIntroSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundColor: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: navigationBarHeight),
            Text('PRODUKTE'),
          ],
        ),
      );
}
