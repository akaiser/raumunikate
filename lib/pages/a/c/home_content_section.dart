import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/a/c/_home_content_slides.dart';

class HomeContentSection extends StatelessWidget {
  const HomeContentSection({super.key});

  @override
  Widget build(BuildContext context) => const CoverImageBox(
        Assets.homeContent,
        colorFilter: ColorFilter.mode(mainTODO_0, BlendMode.srcATop),
        child: HomeContentSlides(),
      );
}
