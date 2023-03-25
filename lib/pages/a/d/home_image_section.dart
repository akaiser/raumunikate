import 'package:flutter/widgets.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/pages/base_section.dart';

class HomeImageSection extends StatelessWidget {
  const HomeImageSection({super.key});

  @override
  Widget build(BuildContext context) =>
      const BaseSection(backgroundAsset: Assets.homeImage);
}
