import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/a/e/_home_referrals_single.dart';
import 'package:raumunikate/pages/a/e/_home_referrals_slides.dart';
import 'package:raumunikate/pages/base_section.dart';

class HomeReferralsSection extends StatelessWidget {
  const HomeReferralsSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundColor: mainTODO_4,
        child: ResponsiveLayout(
          m: (_) => const HomeReferralsSingle(),
          xs: (_) => const HomeReferralsSlides(),
        ),
      );
}
