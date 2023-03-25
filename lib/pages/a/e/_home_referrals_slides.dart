import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class HomeReferralsSlides extends StatelessWidget {
  const HomeReferralsSlides({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(top: 80, left: 24, right: 40, bottom: 40),
        child: _Slides(),
      );
}

class _Slides extends StatelessWidget {
  const _Slides();

  @override
  Widget build(BuildContext context) => PageView(
        children: const [
          HomeReferralCard(data.referralData0),
          HomeReferralCard(data.referralData1),
          HomeReferralCard(data.referralData2),
        ],
      );
}
