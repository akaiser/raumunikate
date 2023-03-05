import 'package:flutter/widgets.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';

class HomeContentsSection extends StatelessWidget {
  const HomeContentsSection({super.key});

  @override
  Widget build(BuildContext context) => const CoverImageBox(
        Assets.homeContents,
        colorFilter: ColorFilter.mode(mainTODO_0, BlendMode.srcATop),
      );
}
